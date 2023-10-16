#include "tglang.h"

#include <limits.h>
#include <unistd.h>
#include <stdio.h>
#include <iostream>
#include <unordered_map>
#include <tensorflow/cc/saved_model/loader.h>

// Create a map to associate the JSON keys with the enum values
std::vector<TglangLanguage> languageMap = {
        TGLANG_LANGUAGE_ASSEMBLY,
        TGLANG_LANGUAGE_BATCH,
        TGLANG_LANGUAGE_C,
        TGLANG_LANGUAGE_CSHARP,
        TGLANG_LANGUAGE_CPLUSPLUS,
        TGLANG_LANGUAGE_CLOJURE,
        TGLANG_LANGUAGE_CMAKE,
        TGLANG_LANGUAGE_COBOL,
        TGLANG_LANGUAGE_COFFESCRIPT,
        TGLANG_LANGUAGE_CSS,
        TGLANG_LANGUAGE_CSV,
        TGLANG_LANGUAGE_DART,
        TGLANG_LANGUAGE_JSON,
        TGLANG_LANGUAGE_DOCKER,
        TGLANG_LANGUAGE_ELIXIR,
        TGLANG_LANGUAGE_ERLANG,
        TGLANG_LANGUAGE_FORTRAN,
        TGLANG_LANGUAGE_GO,
        TGLANG_LANGUAGE_APACHE_GROOVY,
        TGLANG_LANGUAGE_HASKELL,
        TGLANG_LANGUAGE_HTML,
        TGLANG_LANGUAGE_INI,
        TGLANG_LANGUAGE_JAVA,
        TGLANG_LANGUAGE_JAVASCRIPT,
        TGLANG_LANGUAGE_JSON,
        TGLANG_LANGUAGE_JULIA,
        TGLANG_LANGUAGE_KOTLIN,
        TGLANG_LANGUAGE_COMMON_LISP,
        TGLANG_LANGUAGE_LUA,
        TGLANG_LANGUAGE_MAKEFILE,
        TGLANG_LANGUAGE_MARKDOWN,
        TGLANG_LANGUAGE_MATLAB,
        TGLANG_LANGUAGE_OBJECTIVE_C,
        TGLANG_LANGUAGE_OCAML,
        TGLANG_LANGUAGE_PASCAL,
        TGLANG_LANGUAGE_PERL,
        TGLANG_LANGUAGE_PHP,
        TGLANG_LANGUAGE_POWERSHELL,
        TGLANG_LANGUAGE_PROLOG,
        TGLANG_LANGUAGE_PYTHON,
        TGLANG_LANGUAGE_R,
        TGLANG_LANGUAGE_RUBY,
        TGLANG_LANGUAGE_RUST,
        TGLANG_LANGUAGE_SCALA,
        TGLANG_LANGUAGE_SHELL,
        TGLANG_LANGUAGE_SQL,
        TGLANG_LANGUAGE_SWIFT,
        TGLANG_LANGUAGE_LATEX,
        TGLANG_LANGUAGE_TYPESCRIPT,
        TGLANG_LANGUAGE_VERILOG,
        TGLANG_LANGUAGE_VISUAL_BASIC,
        TGLANG_LANGUAGE_XML,
        TGLANG_LANGUAGE_YAML,
        TGLANG_LANGUAGE_1S_ENTERPRISE,
        TGLANG_LANGUAGE_ABAP,
        TGLANG_LANGUAGE_ACTIONSCRIPT,
        TGLANG_LANGUAGE_ADA,
        TGLANG_LANGUAGE_APEX,
        TGLANG_LANGUAGE_APPLESCRIPT,
        TGLANG_LANGUAGE_ASP,
        TGLANG_LANGUAGE_AUTOHOTKEY,
        TGLANG_LANGUAGE_AWK,
        TGLANG_LANGUAGE_BASIC,
        TGLANG_LANGUAGE_BISON,
        TGLANG_LANGUAGE_CRYSTAL,
        TGLANG_LANGUAGE_GRADLE,
        TGLANG_LANGUAGE_D,
        TGLANG_LANGUAGE_ELM,
        TGLANG_LANGUAGE_FORTH,
        TGLANG_LANGUAGE_FSHARP,
        TGLANG_LANGUAGE_QML,
        TGLANG_LANGUAGE_SOLIDITY,
        TGLANG_LANGUAGE_SMALLTALK,
        TGLANG_LANGUAGE_GAMS,
        TGLANG_LANGUAGE_FIFT,
        TGLANG_LANGUAGE_VALA,
        TGLANG_LANGUAGE_FUNC
};

// run the model
TglangLanguage test(const char *modelPath, const char *text) {
    tensorflow::SavedModelBundle model;
    tensorflow::Status status = tensorflow::LoadSavedModel(
            tensorflow::SessionOptions(),
            tensorflow::RunOptions(),
            modelPath,
            {"serve"},
            &model);

    TF_CHECK_OK(status);

    // Provide input data.
    tensorflow::Tensor tensor(tensorflow::DT_STRING, tensorflow::TensorShape({1}));
    tensor.scalar<tensorflow::tstring>()() = tensorflow::tstring(text);

    // Link the data with some tags so tensorflow know where to put those data entries.
    std::vector<std::pair<std::string, tensorflow::Tensor>> feedInputs = {{"Placeholder:0", tensor}};
    std::vector<std::string> fetches = {"head/Tile:0", "head/predictions/probabilities:0"};

    // We need to store the results somewhere.
    std::vector<tensorflow::Tensor> outputs;

    // Let's run the model...
    status = model.GetSession()->Run(feedInputs, fetches, {}, &outputs);
    TF_CHECK_OK(status);

    auto langs = outputs.at(0).flat<tensorflow::tstring>();
    std::vector<std::string> output_langs(langs.data(), langs.data() + langs.size());

    auto scores = outputs.at(1).flat<float>();
    std::vector<float> output_scores(scores.data(), scores.data() + scores.size());

    int bestIndex = 0;
    float bestScore = 0;
    TglangLanguage bestLang = TGLANG_LANGUAGE_OTHER;
    for (int i = 0; i < output_scores.size(); i++) {
        float score = output_scores.at(i);
        if (score >= bestScore) {
            bestIndex = i;
            bestScore = score;
            bestLang = languageMap.at(i);
        }
    }
    std::cout << "\nBEST LANG INDEX::" << bestIndex << "\n";
    std::cout << "BEST bestScore::" << bestScore << "\n";

    return bestLang;
}

enum TglangLanguage tglang_detect_programming_language(const char *text) {
    std::string currentDirectory;

    char cwd[PATH_MAX];
    if (getcwd(cwd, sizeof(cwd)) != NULL) {
        currentDirectory = cwd;
    } else {
        perror("getcwd() error");
        return TGLANG_LANGUAGE_OTHER; // for now
    }

    std::cout << currentDirectory;

    // Concatenate the path to the model directory
    std::string modelPath = currentDirectory + "/resources/model";

    const char* modelPathCStr = modelPath.c_str();
    return test(modelPathCStr, text);
}

int main() {
    std::cout << "Starting" << "\n";
    tglang_detect_programming_language("SAMPLE TEXT HERE");
    std::cout << "Done" << "\n";
    return 0;
}