/***********************************************************
@author Felix Weilbach <felix.weilbach@nextcloud.com>

@copyright GPLv3 or Later
***********************************************************/

namespace Occ {
namespace Ui {

public class EmojiModel { //: GLib.Object {

    //  /***********************************************************
    //  ***********************************************************/
    //  private const GLib.VariantList PEOPLE = {
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x80"), ":grinning:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x81"), ":grin:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x82"), ":joy:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xa3"), ":rofl:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x83"), ":smiley:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x84"), ":smile:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x85"), ":sweat_smile:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x86"), ":laughing:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x89"), ":wink:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x8a"), ":blush:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x8b"), ":yum:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x8e"), ":sunglasses:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x8d"), ":heart_eyes:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x98"), ":kissing_heart:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x97"), ":kissing:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x99"), ":kissing_smiling_eyes:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x9a"), ":kissing_closed_eyes:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\xba"), ":relaxed:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x99\x82"), ":slight_smile:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\x97"), ":hugging:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\x94"), ":thinking:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x90"), ":neutral_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x91"), ":expressionless:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xb6"), ":no_mouth:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x99\x84"), ":rolling_eyes:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x8f"), ":smirk:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xa3"), ":persevere:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xa5"), ":disappointed_relieved:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xae"), ":open_mouth:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\x90"), ":zipper_mouth:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xaf"), ":hushed:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xaa"), ":sleepy:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xab"), ":tired_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xb4"), ":sleeping:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x8c"), ":relieved:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\x93"), ":nerd:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x9b"), ":stuck_out_tongue:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x9c"), ":stuck_out_tongue_winking_eye:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x9d"), ":stuck_out_tongue_closed_eyes:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xa4"), ":drooling_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x92"), ":unamused:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x93"), ":sweat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x94"), ":pensive:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x95"), ":confused:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x99\x83"), ":upside_down:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\x91"), ":money_mouth:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xb2"), ":astonished:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\xb9"), ":frowning2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x99\x81"), ":slight_frown:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x96"), ":confounded:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x9e"), ":disappointed:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x9f"), ":worried:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xa4"), ":triumph:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xa2"), ":cry:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xad"), ":sob:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xa6"), ":frowning:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xa7"), ":anguished:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xa8"), ":fearful:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xa9"), ":weary:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xac"), ":grimacing:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xb0"), ":cold_sweat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xb1"), ":scream:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xb3"), ":flushed:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xb5"), ":dizzy_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xa1"), ":rage:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xa0"), ":angry:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x87"), ":innocent:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xa0"), ":cowboy:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xa1"), ":clown:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xa5"), ":lying_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xb7"), ":mask:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\x92"), ":thermometer_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\x95"), ":head_bandage:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xa2"), ":nauseated_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xa7"), ":sneezing_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\x88"), ":smiling_imp:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xbf"), ":imp:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xb9"), ":japanese_ogre:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xba"), ":japanese_goblin:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x80"), ":skull:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xbb"), ":ghost:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xbd"), ":alien:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\x96"), ":robot:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xa9"), ":poop:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xba"), ":smiley_cat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xb8"), ":smile_cat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xb9"), ":joy_cat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xbb"), ":heart_eyes_cat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xbc"), ":smirk_cat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xbd"), ":kissing_cat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x99\x80"), ":scream_cat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xbf"), ":crying_cat_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x98\xbe"), ":pouting_cat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xa6"), ":boy:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xa7"), ":girl:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xa8"), ":man:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xa9"), ":woman:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xb4"), ":older_man:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xb5"), ":older_woman:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xb6"), ":baby:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xbc"), ":angel:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xae"), ":cop:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\xb5"), ":spy:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x82"), ":guardsman:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xb7"), ":construction_worker:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xb3"), ":man_with_turban:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xb1"), ":person_with_blond_hair:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x85"), ":santa:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xb6"), ":mrs_claus:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xb8"), ":princess:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xb4"), ":prince:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xb0"), ":bride_with_veil:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xb5"), ":man_in_tuxedo:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xb0"), ":pregnant_woman:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xb2"), ":man_with_gua_pi_mao:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x99\x8d"), ":person_frowning:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x99\x8e"), ":person_with_pouting_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x99\x85"), ":no_good:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x99\x86"), ":ok_woman:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x81"), ":information_desk_person:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x99\x8b"), ":raising_hand:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x99\x87"), ":bow:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xa6"), ":face_palm:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xb7"), ":shrug:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x86"), ":massage:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x87"), ":haircut:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb6"), ":walking:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x83"), ":runner:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x83"), ":dancer:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\xba"), ":man_dancing:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xaf"), ":dancers:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\xa3"), ":speaking_head:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xa4"), ":bust_in_silhouette:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xa5"), ":busts_in_silhouette:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xab"), ":couple:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xac"), ":two_men_holding_hands:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xad"), ":two_women_holding_hands:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x8f"), ":couplekiss:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x91"), ":couple_with_heart:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xaa"), ":family:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xaa"), ":muscle:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xb3"), ":selfie:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x88"), ":point_left:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x89"), ":point_right:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\x9d"), ":point_up:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x86"), ":point_up_2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x96\x95"), ":middle_finger:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x87"), ":point_down:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9c\x8c"), ":v:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\x9e"), ":fingers_crossed:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x96\x96"), ":vulcan:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\x98"), ":metal:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\x99"), ":call_me:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x96\x90"), ":hand_splayed:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9c\x8b"), ":raised_hand:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x8c"), ":ok_hand:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x8d"), ":thumbsup:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x8e"), ":thumbsdown:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9c\x8a"), ":fist:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x8a"), ":punch:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\x9b"), ":left_facing_fist:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\x9c"), ":right_facing_fist:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\x9a"), ":raised_back_of_hand:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x8b"), ":wave:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x8f"), ":clap:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9c\x8d"), ":writing_hand:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x90"), ":open_hands:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x99\x8c"), ":raised_hands:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x99\x8f"), ":pray:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\x9d"), ":handshake:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x85"), ":nail_care:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x82"), ":ear:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x83"), ":nose:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xa3"), ":footprints:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x80"), ":eyes:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x81"), ":eye:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x85"), ":tongue:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x84"), ":lips:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x8b"), ":kiss:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xa4"), ":zzz:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x93"), ":eyeglasses:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\xb6"), ":dark_sunglasses:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x94"), ":necktie:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x95"), ":shirt:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x96"), ":jeans:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x97"), ":dress:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x98"), ":kimono:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x99"), ":bikini:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x9a"), ":womans_clothes:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x9b"), ":purse:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x9c"), ":handbag:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x9d"), ":pouch:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x92"), ":school_satchel:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x9e"), ":mans_shoe:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x9f"), ":athletic_shoe:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xa0"), ":high_heel:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xa1"), ":sandal:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xa2"), ":boot:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x91"), ":crown:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x92"), ":womans_hat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xa9"), ":tophat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x93"), ":mortar_board:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\x91"), ":helmet_with_cross:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x84"), ":lipstick:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x8d"), ":ring:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x82"), ":closed_umbrella:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xbc"), ":briefcase:" }),
    //  }

    //  private const GLib.VariantList NATURE = {
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x99\x88"), ":see_no_evil:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x99\x89"), ":hear_no_evil:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x99\x8a"), ":speak_no_evil:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xa6"), ":sweat_drops:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xa8"), ":dash:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xb5"), ":monkey_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x92"), ":monkey:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa6\x8d"), ":gorilla:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xb6"), ":dog:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x95"), ":dog2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xa9"), ":poodle:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xba"), ":wolf:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa6\x8a"), ":fox:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xb1"), ":cat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x88"), ":cat2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa6\x81"), ":lion_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xaf"), ":tiger:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x85"), ":tiger2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x86"), ":leopard:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xb4"), ":horse:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x8e"), ":racehorse:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa6\x8c"), ":deer:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa6\x84"), ":unicorn:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xae"), ":cow:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x82"), ":ox:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x83"), ":water_buffalo:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x84"), ":cow2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xb7"), ":pig:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x96"), ":pig2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x97"), ":boar:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xbd"), ":pig_nose:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x8f"), ":ram:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x91"), ":sheep:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x90"), ":goat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xaa"), ":dromedary_camel:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xab"), ":camel:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x98"), ":elephant:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa6\x8f"), ":rhino:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xad"), ":mouse:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x81"), ":mouse2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x80"), ":rat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xb9"), ":hamster:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xb0"), ":rabbit:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x87"), ":rabbit2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xbf"), ":chipmunk:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa6\x87"), ":bat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xbb"), ":bear:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xa8"), ":koala:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xbc"), ":panda_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xbe"), ":feet:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa6\x83"), ":turkey:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x94"), ":chicken:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x93"), ":rooster:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xa3"), ":hatching_chick:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xa4"), ":baby_chick:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xa5"), ":hatched_chick:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xa6"), ":bird:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xa7"), ":penguin:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x8a"), ":dove:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa6\x85"), ":eagle:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa6\x86"), ":duck:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa6\x89"), ":owl:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xb8"), ":frog:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x8a"), ":crocodile:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xa2"), ":turtle:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa6\x8e"), ":lizard:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x8d"), ":snake:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xb2"), ":dragon_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x89"), ":dragon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xb3"), ":whale:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x8b"), ":whale2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xac"), ":dolphin:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x9f"), ":fish:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xa0"), ":tropical_fish:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\xa1"), ":blowfish:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa6\x88"), ":shark:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x99"), ":octopus:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x9a"), ":shell:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa6\x80"), ":crab:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa6\x90"), ":shrimp:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa6\x91"), ":squid:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa6\x8b"), ":butterfly:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x8c"), ":snail:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x9b"), ":bug:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x9c"), ":ant:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x9d"), ":bee:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x90\x9e"), ":beetle:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\xb7"), ":spider:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\xb8"), ":spider_web:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa6\x82"), ":scorpion:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x90"), ":bouquet:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xb8"), ":cherry_blossom:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xb5"), ":rosette:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xb9"), ":rose:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x80"), ":wilted_rose:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xba"), ":hibiscus:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xbb"), ":sunflower:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xbc"), ":blossom:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xb7"), ":tulip:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xb1"), ":seedling:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xb2"), ":evergreen_tree:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xb3"), ":deciduous_tree:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xb4"), ":palm_tree:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xb5"), ":cactus:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xbe"), ":ear_of_rice:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xbf"), ":herb:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\x98"), ":shamrock:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x80"), ":four_leaf_clover:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x81"), ":maple_leaf:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x82"), ":fallen_leaf:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x83"), ":leaves:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x84"), ":mushroom:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xb0"), ":chestnut:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x8d"), ":earth_africa:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x8e"), ":earth_americas:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x8f"), ":earth_asia:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x91"), ":new_moon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x92"), ":waxing_crescent_moon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x93"), ":first_quarter_moon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x94"), ":waxing_gibbous_moon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x95"), ":full_moon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x96"), ":waning_gibbous_moon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x97"), ":last_quarter_moon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x98"), ":waning_crescent_moon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x99"), ":crescent_moon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x9a"), ":new_moon_with_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x9b"), ":first_quarter_moon_with_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x9c"), ":last_quarter_moon_with_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\x80"), ":sunny:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x9d"), ":full_moon_with_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x9e"), ":sun_with_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\xad\x90"), ":star:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x9f"), ":star2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\x81"), ":cloud:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\x85"), ":partly_sunny:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\x88"), ":thunder_cloud_rain:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xa4"), ":white_sun_small_cloud:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xa5"), ":white_sun_cloud:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xa6"), ":white_sun_rain_cloud:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xa7"), ":cloud_rain:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xa8"), ":cloud_snow:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xa9"), ":cloud_lightning:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xaa"), ":cloud_tornado:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xab"), ":fog:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xac"), ":wind_blowing_face:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\x82"), ":umbrella2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\x94"), ":umbrella:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9a\xa1"), ":zap:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9d\x84"), ":snowflake:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\x83"), ":snowman2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\x84"), ":snowman:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\x84"), ":comet:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xa5"), ":fire:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xa7"), ":droplet:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x8a"), ":ocean:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x83"), ":jack_o_lantern:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x84"), ":christmas_tree:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9c\xa8"), ":sparkles:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x8b"), ":tanabata_tree:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x8d"), ":bamboo:" }),
    //  }

    //  private const GLib.VariantList FOOD = {
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x87"), ":grapes:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x88"), ":melon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x89"), ":watermelon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x8a"), ":tangerine:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x8b"), ":lemon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x8c"), ":banana:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x8d"), ":pineapple:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x8e"), ":apple:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x8f"), ":green_apple:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x90"), ":pear:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x91"), ":peach:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x92"), ":cherries:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x93"), ":strawberry:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x9d"), ":kiwi:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x85"), ":tomato:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x91"), ":avocado:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x86"), ":eggplant:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x94"), ":potato:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x95"), ":carrot:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xbd"), ":corn:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xb6"), ":hot_pepper:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x92"), ":cucumber:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x9c"), ":peanuts:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x9e"), ":bread:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x90"), ":croissant:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x96"), ":french_bread:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x9e"), ":pancakes:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa7\x80"), ":cheese:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x96"), ":meat_on_signal_bone:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x97"), ":poultry_leg:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x93"), ":bacon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x94"), ":hamburger:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x9f"), ":fries:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x95"), ":pizza:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xad"), ":hotdog:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xae"), ":taco:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xaf"), ":burrito:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x99"), ":stuffed_flatbread:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x9a"), ":egg:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xb3"), ":cooking:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x98"), ":shallow_pan_of_food:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xb2"), ":stew:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x97"), ":salad:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xbf"), ":popcorn:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xb1"), ":bento:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x98"), ":rice_cracker:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x99"), ":rice_ball:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x9a"), ":rice:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x9b"), ":curry:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x9c"), ":ramen:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\x9d"), ":spaghetti:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xa0"), ":sweet_potato:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xa2"), ":oden:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xa3"), ":sushi:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xa4"), ":fried_shrimp:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xa5"), ":fish_cake:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xa1"), ":dango:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xa6"), ":icecream:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xa7"), ":shaved_ice:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xa8"), ":ice_cream:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xa9"), ":doughnut:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xaa"), ":cookie:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x82"), ":birthday:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xb0"), ":cake:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xab"), ":chocolate_bar:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xac"), ":candy:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xad"), ":lollipop:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xae"), ":custard:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xaf"), ":honey_pot:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xbc"), ":baby_bottle:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x9b"), ":milk:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\x95"), ":coffee:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xb5"), ":tea:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xb6"), ":sake:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xbe"), ":champagne:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xb7"), ":wine_glass:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xb8"), ":cocktail:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xb9"), ":tropical_drink:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xba"), ":beer:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xbb"), ":beers:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x82"), ":champagne_glass:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x83"), ":tumbler_glass:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xbd"), ":fork_knife_plate:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8d\xb4"), ":fork_and_knife:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x84"), ":spoon:" }),
    //  }

    //  private const GLib.VariantList ACTIVITY = {
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\xbe"), ":space_invader:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\xb4"), ":levitate:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xba"), ":fencer:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x87"), ":horse_racing:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x87\xf0\x9f\x8f\xbb"), ":horse_racing_tone1:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x87\xf0\x9f\x8f\xbc"), ":horse_racing_tone2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x87\xf0\x9f\x8f\xbd"), ":horse_racing_tone3:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x87\xf0\x9f\x8f\xbe"), ":horse_racing_tone4:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x87\xf0\x9f\x8f\xbf"), ":horse_racing_tone5:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\xb7"), ":skier:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x82"), ":snowboarder:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x8c"), ":golfer:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x84"), ":surfer:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x84\xf0\x9f\x8f\xbb"), ":surfer_tone1:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x84\xf0\x9f\x8f\xbc"), ":surfer_tone2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x84\xf0\x9f\x8f\xbd"), ":surfer_tone3:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x84\xf0\x9f\x8f\xbe"), ":surfer_tone4:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x84\xf0\x9f\x8f\xbf"), ":surfer_tone5:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xa3"), ":rowboat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xa3\xf0\x9f\x8f\xbb"), ":rowboat_tone1:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xa3\xf0\x9f\x8f\xbc"), ":rowboat_tone2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xa3\xf0\x9f\x8f\xbd"), ":rowboat_tone3:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xa3\xf0\x9f\x8f\xbe"), ":rowboat_tone4:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xa3\xf0\x9f\x8f\xbf"), ":rowboat_tone5:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x8a"), ":swimmer:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x8a\xf0\x9f\x8f\xbb"), ":swimmer_tone1:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x8a\xf0\x9f\x8f\xbc"), ":swimmer_tone2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x8a\xf0\x9f\x8f\xbd"), ":swimmer_tone3:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x8a\xf0\x9f\x8f\xbe"), ":swimmer_tone4:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x8a\xf0\x9f\x8f\xbf"), ":swimmer_tone5:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\xb9"), ":basketball_player:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\xb9\xf0\x9f\x8f\xbb"), ":basketball_player_tone1:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\xb9\xf0\x9f\x8f\xbc"), ":basketball_player_tone2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\xb9\xf0\x9f\x8f\xbd"), ":basketball_player_tone3:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\xb9\xf0\x9f\x8f\xbe"), ":basketball_player_tone4:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\xb9\xf0\x9f\x8f\xbf"), ":basketball_player_tone5:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x8b"), ":lifter:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x8b\xf0\x9f\x8f\xbb"), ":lifter_tone1:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x8b\xf0\x9f\x8f\xbc"), ":lifter_tone2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x8b\xf0\x9f\x8f\xbd"), ":lifter_tone3:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x8b\xf0\x9f\x8f\xbe"), ":lifter_tone4:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x8b\xf0\x9f\x8f\xbf"), ":lifter_tone5:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb4"), ":bicyclist:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb4\xf0\x9f\x8f\xbb"), ":bicyclist_tone1:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb4\xf0\x9f\x8f\xbc"), ":bicyclist_tone2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb4\xf0\x9f\x8f\xbd"), ":bicyclist_tone3:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb4\xf0\x9f\x8f\xbe"), ":bicyclist_tone4:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb4\xf0\x9f\x8f\xbf"), ":bicyclist_tone5:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb5"), ":mountain_bicyclist:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb5\xf0\x9f\x8f\xbb"), ":mountain_bicyclist_tone1:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb5\xf0\x9f\x8f\xbc"), ":mountain_bicyclist_tone2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb5\xf0\x9f\x8f\xbd"), ":mountain_bicyclist_tone3:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb5\xf0\x9f\x8f\xbe"), ":mountain_bicyclist_tone4:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb5\xf0\x9f\x8f\xbf"), ":mountain_bicyclist_tone5:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xb8"), ":cartwheel:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xb8\xf0\x9f\x8f\xbb"), ":cartwheel_tone1:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xb8\xf0\x9f\x8f\xbc"), ":cartwheel_tone2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xb8\xf0\x9f\x8f\xbd"), ":cartwheel_tone3:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xb8\xf0\x9f\x8f\xbe"), ":cartwheel_tone4:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xb8\xf0\x9f\x8f\xbf"), ":cartwheel_tone5:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xbc"), ":wrestlers:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xbc\xf0\x9f\x8f\xbb"), ":wrestlers_tone1:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xbc\xf0\x9f\x8f\xbc"), ":wrestlers_tone2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xbc\xf0\x9f\x8f\xbd"), ":wrestlers_tone3:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xbc\xf0\x9f\x8f\xbe"), ":wrestlers_tone4:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xbc\xf0\x9f\x8f\xbf"), ":wrestlers_tone5:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xbd"), ":water_polo:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xbd\xf0\x9f\x8f\xbb"), ":water_polo_tone1:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xbd\xf0\x9f\x8f\xbc"), ":water_polo_tone2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xbd\xf0\x9f\x8f\xbd"), ":water_polo_tone3:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xbd\xf0\x9f\x8f\xbe"), ":water_polo_tone4:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xbd\xf0\x9f\x8f\xbf"), ":water_polo_tone5:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xbe"), ":handball:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xbe\xf0\x9f\x8f\xbb"), ":handball_tone1:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xbe\xf0\x9f\x8f\xbc"), ":handball_tone2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xbe\xf0\x9f\x8f\xbd"), ":handball_tone3:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xbe\xf0\x9f\x8f\xbe"), ":handball_tone4:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xbe\xf0\x9f\x8f\xbf"), ":handball_tone5:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xb9"), ":juggling:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xb9\xf0\x9f\x8f\xbb"), ":juggling_tone1:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xb9\xf0\x9f\x8f\xbc"), ":juggling_tone2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xb9\xf0\x9f\x8f\xbd"), ":juggling_tone3:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xb9\xf0\x9f\x8f\xbe"), ":juggling_tone4:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa4\xb9\xf0\x9f\x8f\xbf"), ":juggling_tone5:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xaa"), ":circus_tent:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xad"), ":performing_arts:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xa8"), ":art:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xb0"), ":on_signal_machine:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x80"), ":bath:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x80\xf0\x9f\x8f\xbb"), ":bath_tone1:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x80\xf0\x9f\x8f\xbc"), ":bath_tone2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x80\xf0\x9f\x8f\xbd"), ":bath_tone3:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x80\xf0\x9f\x8f\xbe"), ":bath_tone4:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x80\xf0\x9f\x8f\xbf"), ":bath_tone5:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x97"), ":reminder_ribbon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x9f"), ":tickets:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xab"), ":ticket:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x96"), ":military_medal:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x86"), ":trophy:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x85"), ":medal:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x87"), ":first_place:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x88"), ":second_place:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x89"), ":third_place:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9a\xbd"), ":soccer:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9a\xbe"), ":baseball:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x80"), ":basketball:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x90"), ":volleyball:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x88"), ":football:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x89"), ":rugby_football:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xbe"), ":tennis:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xb1"), ":8ball:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xb3"), ":bowling:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x8f"), ":cricket:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x91"), ":field_hockey:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x92"), ":hockey:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x93"), ":ping_pong:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xb8"), ":badminton:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x8a"), ":boxing_glove:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x8b"), ":martial_arts_uniform:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x85"), ":goal:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xaf"), ":dart:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\xb3"), ":golf:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\xb8"), ":ice_skate:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xa3"), ":fishing_pole_and_fish:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xbd"), ":running_shirt_with_sash:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xbf"), ":ski:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xae"), ":video_game:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xb2"), ":game_die:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xbc"), ":musical_score:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xa4"), ":microphone:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xa7"), ":headphones:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xb7"), ":saxophone:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xb8"), ":guitar:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xb9"), ":musical_keyboard:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xba"), ":trumpet:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xbb"), ":violin:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\xa5\x81"), ":drum:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xac"), ":clapper:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xb9"), ":bow_and_arrow:" }),
    //  }

    //  private const GLib.VariantList TRAVEL = {
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x8e"), ":race_car:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x8d"), ":motorcycle:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\xbe"), ":japan:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x94"), ":mountain_snow:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\xb0"), ":mountain:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x8b"), ":volcano:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\xbb"), ":mount_fuji:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x95"), ":camping:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x96"), ":beach:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x9c"), ":desert:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x9d"), ":island:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x9e"), ":park:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x9f"), ":stadium:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x9b"), ":classical_building:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x97"), ":construction_site:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x98"), ":homes:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x99"), ":cityscape:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x9a"), ":house_abandoned:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xa0"), ":house:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xa1"), ":house_with_garden:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xa2"), ":office:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xa3"), ":post_office:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xa4"), ":european_post_office:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xa5"), ":hospital:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xa6"), ":bank:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xa8"), ":hotel:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xa9"), ":love_hotel:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xaa"), ":convenience_store:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xab"), ":school:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xac"), ":department_store:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xad"), ":factory:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xaf"), ":japanese_castle:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xb0"), ":european_castle:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x92"), ":wedding:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\xbc"), ":tokyo_tower:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\xbd"), ":statue_of_liberty:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\xaa"), ":church:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x8c"), ":mosque:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x8d"), ":synagogue:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\xa9"), ":shinto_shrine:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x8b"), ":kaaba:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\xb2"), ":fountain:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\xba"), ":tent:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x81"), ":foggy:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x83"), ":night_with_stars:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x84"), ":sunrise_over_mountains:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x85"), ":sunrise:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x86"), ":city_dusk:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x87"), ":city_sunset:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x89"), ":bridge_at_night:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x8c"), ":milky_way:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xa0"), ":carousel_horse:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xa1"), ":ferris_wheel:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xa2"), ":roller_coaster:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x82"), ":steam_locomotive:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x83"), ":railway_car:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x84"), ":bullettrain_side:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x85"), ":bullettrain_front:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x86"), ":train2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x87"), ":metro:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x88"), ":light_rail:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x89"), ":station:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x8a"), ":tram:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x9d"), ":monorail:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x9e"), ":mountain_railway:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x8b"), ":train:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x8c"), ":bus:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x8d"), ":oncoming_bus:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x8e"), ":trolleybus:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x90"), ":minibus:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x91"), ":ambulance:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x92"), ":fire_engine:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x93"), ":police_car:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x94"), ":oncoming_police_car:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x95"), ":taxi:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x96"), ":oncoming_taxi:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x97"), ":red_car:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x98"), ":oncoming_automobile:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x99"), ":blue_car:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x9a"), ":truck:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x9b"), ":articulated_lorry:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x9c"), ":tractor:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb2"), ":bike:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\xb4"), ":scooter:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\xb5"), ":motor_scooter:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x8f"), ":busstop:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\xa3"), ":motorway:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\xa4"), ":railway_track:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\xbd"), ":fuelpump:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xa8"), ":rotating_light:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xa5"), ":traffic_light:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xa6"), ":vertical_traffic_light:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xa7"), ":construction:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9a\x93"), ":anchor:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\xb5"), ":sailboat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\xb6"), ":canoe:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xa4"), ":speedboat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\xb3"), ":cruise_ship:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\xb4"), ":ferry:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\xa5"), ":motorboat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xa2"), ":ship:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9c\x88"), ":airplane:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\xa9"), ":airplane_small:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\xab"), ":airplane_departure:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\xac"), ":airplane_arriving:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xba"), ":seat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x81"), ":helicopter:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x9f"), ":suspension_railway:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xa0"), ":mountain_cableway:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xa1"), ":aerial_tramway:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\x80"), ":rocket:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\xb0"), ":satellite_orbital:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xa0"), ":stars:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x88"), ":rainbow:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x86"), ":fireworks:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x87"), ":sparkler:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x91"), ":rice_scene:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\x81"), ":checkered_flag:" }),
    //  }

    //  private const GLib.VariantList OBJECTS = {
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\xa0"), ":skull_crossbones:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x8c"), ":love_letter:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xa3"), ":bomb:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\xb3"), ":hole:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x8d"), ":shopping_bags:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xbf"), ":prayer_beads:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x8e"), ":gem:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xaa"), ":knife:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xba"), ":amphora:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\xba"), ":map:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x88"), ":barber:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x96\xbc"), ":frame_photo:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x8e"), ":bellhop:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xaa"), ":door:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x8c"), ":sleeping_accommodation:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x8f"), ":bed:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x8b"), ":couch:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xbd"), ":toilet:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xbf"), ":shower:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x81"), ":bathtub:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x8c\x9b"), ":hourglass:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x8f\xb3"), ":hourglass_flowing_sand:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x8c\x9a"), ":watch:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x8f\xb0"), ":alarm_clock:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x8f\xb1"), ":stopwatch:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x8f\xb2"), ":timer:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\xb0"), ":clock:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\xa1"), ":thermometer:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\xb1"), ":beach_umbrella:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x88"), ":balloon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x89"), ":tada:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x8a"), ":confetti_ball:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x8e"), ":dolls:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x8f"), ":flags:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x90"), ":wind_chime:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x80"), ":ribbon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x81"), ":gift:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\xb9"), ":joystick:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xaf"), ":postal_horn:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x99"), ":microphone2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x9a"), ":level_slider:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x9b"), ":control_knobs:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xbb"), ":radio:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xb1"), ":iphone:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xb2"), ":calling:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\x8e"), ":telephone:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x9e"), ":telephone_receiver:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x9f"), ":pager:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xa0"), ":fax:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x8b"), ":battery:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x8c"), ":electric_plug:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xbb"), ":computer:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x96\xa5"), ":desktop:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x96\xa8"), ":printer:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x8c\xa8"), ":keyboard:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x96\xb1"), ":mouse_three_button:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x96\xb2"), ":trackball:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xbd"), ":minidisc:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xbe"), ":floppy_disk:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xbf"), ":cd:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x80"), ":dvd:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xa5"), ":movie_camera:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x9e"), ":film_frames:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xbd"), ":projector:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xba"), ":tv:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xb7"), ":camera:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xb8"), ":camera_with_flash:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xb9"), ":video_camera:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xbc"), ":vhs:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x8d"), ":mag:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x8e"), ":mag_right:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xac"), ":microscope:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xad"), ":telescope:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xa1"), ":satellite:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\xaf"), ":candle:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xa1"), ":bulb:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xa6"), ":flashlight:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xae"), ":izakaya_lantern:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x94"), ":notebook_with_decorative_cover:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x95"), ":closed_book:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x96"), ":book:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x97"), ":green_book:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x98"), ":blue_book:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x99"), ":orange_book:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x9a"), ":books:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x93"), ":notebook:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x92"), ":ledger:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x83"), ":page_with_curl:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x9c"), ":scroll:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x84"), ":page_facing_up:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xb0"), ":newspaper:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\x9e"), ":newspaper2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x91"), ":bookmark_tabs:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x96"), ":bookmark:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xb7"), ":label:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xb0"), ":moneybag:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xb4"), ":yen:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xb5"), ":dollar:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xb6"), ":euro:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xb7"), ":pound:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xb8"), ":money_with_wings:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xb3"), ":credit_card:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9c\x89"), ":envelope:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xa7"), ":e-mail:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xa8"), ":incoming_envelope:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xa9"), ":envelope_with_arrow:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xa4"), ":outbox_tray:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xa5"), ":inbox_tray:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xa6"), ":package:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xab"), ":mailbox:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xaa"), ":mailbox_closed:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xac"), ":mailbox_with_mail:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xad"), ":mailbox_with_no_mail:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xae"), ":postbox:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\xb3"), ":ballot_box:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9c\x8f"), ":pencil2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9c\x92"), ":black_nib:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x96\x8b"), ":pen_fountain:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x96\x8a"), ":pen_ballpoint:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x96\x8c"), ":paintbrush:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x96\x8d"), ":crayon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x9d"), ":pencil:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x81"), ":file_folder:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x82"), ":open_file_folder:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\x82"), ":dividers:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x85"), ":date:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x86"), ":calendar:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\x92"), ":notepad_spiral:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\x93"), ":calendar_spiral:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x87"), ":card_index:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x88"), ":chart_with_upwards_trend:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x89"), ":chart_with_downwards_trend:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x8a"), ":bar_chart:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x8b"), ":clipboard:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x8c"), ":pushpin:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x8d"), ":round_pushpin:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x8e"), ":paperclip:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x96\x87"), ":paperclips:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x8f"), ":straight_ruler:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x90"), ":triangular_ruler:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9c\x82"), ":scissors:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\x83"), ":card_box:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\x84"), ":file_cabinet:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\x91"), ":wastebasket:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x92"), ":lock:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x93"), ":unlock:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x8f"), ":lock_with_ink_pen:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x90"), ":closed_lock_with_key:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x91"), ":key:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\x9d"), ":key2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xa8"), ":hammer:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\x8f"), ":pick:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9a\x92"), ":hammer_pick:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\xa0"), ":tools:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\xa1"), ":dagger:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9a\x94"), ":crossed_swords:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xab"), ":gun:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\xa1"), ":shield:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xa7"), ":wrench:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xa9"), ":nut_and_bolt:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9a\x99"), ":gear:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\x9c"), ":compression:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9a\x97"), ":alembic:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9a\x96"), ":scales:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x97"), ":link:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\x93"), ":chains:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x89"), ":syringe:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x8a"), ":pill:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xac"), ":smoking:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9a\xb0"), ":coffin:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9a\xb1"), ":urn:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\xbf"), ":moyai:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\xa2"), ":oil:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xae"), ":crystal_ball:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x92"), ":shopping_cart:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xa9"), ":triangular_flag_on_signal_post:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\x8c"), ":crossed_flags:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xb4"), ":flag_black:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xb3"), ":flag_white:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xb3\xf0\x9f\x8c\x88"), ":rainbow_flag:" }),
    //  }

    //  private const GLib.VariantList SYMBOLS = {
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x91\x81\xf0\x9f\x97\xa8"), ":eye_in_speech_bubble:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x98"), ":cupid:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9d\xa4"), ":heart:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x93"), ":heartbeat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x94"), ":broken_heart:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x95"), ":two_hearts:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x96"), ":sparkling_heart:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x97"), ":heartpulse:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x99"), ":blue_heart:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x9a"), ":green_heart:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x9b"), ":yellow_heart:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x9c"), ":purple_heart:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x96\xa4"), ":black_heart:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x9d"), ":gift_heart:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x9e"), ":revolving_hearts:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\x9f"), ":heart_decoration:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9d\xa3"), ":heart_exclamation:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xa2"), ":anger:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xa5"), ":boom:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xab"), ":dizzy:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xac"), ":speech_balloon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\xa8"), ":speech_left:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x97\xaf"), ":anger_right:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xad"), ":thought_balloon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xae"), ":white_flower:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x90"), ":globe_with_meridians:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\xa8"), ":hotsprings:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x91"), ":octagonal_sign:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x9b"), ":clock12:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\xa7"), ":clock1230:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x90"), ":clock1:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x9c"), ":clock130:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x91"), ":clock2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x9d"), ":clock230:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x92"), ":clock3:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x9e"), ":clock330:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x93"), ":clock4:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x9f"), ":clock430:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x94"), ":clock5:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\xa0"), ":clock530:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x95"), ":clock6:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\xa1"), ":clock630:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x96"), ":clock7:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\xa2"), ":clock730:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x97"), ":clock8:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\xa3"), ":clock830:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x98"), ":clock9:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\xa4"), ":clock930:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x99"), ":clock10:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\xa5"), ":clock1030:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x9a"), ":clock11:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\xa6"), ":clock1130:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8c\x80"), ":cyclone:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\xa0"), ":spades:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\xa5"), ":hearts:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\xa6"), ":diamonds:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\xa3"), ":clubs:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x83\x8f"), ":black_joker:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x80\x84"), ":mahjong:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xb4"), ":flower_playing_cards:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x87"), ":mute:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x88"), ":speaker:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x89"), ":sound:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x8a"), ":loud_sound:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xa2"), ":loudspeaker:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xa3"), ":mega:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x94"), ":bell:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x95"), ":no_bell:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xb5"), ":musical_note:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xb6"), ":notes:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xb9"), ":chart:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xb1"), ":currency_exchange:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xb2"), ":heavy_dollar_sign:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8f\xa7"), ":atm:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xae"), ":put_litter_in_its_place:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb0"), ":potable_water:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\xbf"), ":wheelchair:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb9"), ":mens:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xba"), ":womens:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xbb"), ":restroom:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xbc"), ":baby_symbol:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xbe"), ":wc:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x82"), ":passport_control:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x83"), ":customs:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x84"), ":baggage_claim:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x85"), ":left_luggage:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9a\xa0"), ":warning:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb8"), ":children_crossing:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\x94"), ":no_entry:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xab"), ":no_entry_sign:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb3"), ":no_bicycles:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xad"), ":no_smoking:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xaf"), ":do_not_litter:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb1"), ":non-potable_water:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9a\xb7"), ":no_pedestrians:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xb5"), ":no_mobile_phones:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x9e"), ":underage:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\xa2"), ":radioactive:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\xa3"), ":biohazard:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\xac\x86"), ":arrow_up:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x86\x97"), ":arrow_upper_right:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9e\xa1"), ":arrow_right:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x86\x98"), ":arrow_lower_right:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\xac\x87"), ":arrow_down:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x86\x99"), ":arrow_lower_left:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\xac\x85"), ":arrow_left:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x86\x96"), ":arrow_upper_left:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x86\x95"), ":arrow_up_down:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x86\x94"), ":left_right_arrow:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x86\xa9"), ":leftwards_arrow_with_hook:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x86\xaa"), ":arrow_right_hook:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\xa4\xb4"), ":arrow_heading_up:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\xa4\xb5"), ":arrow_heading_down:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x83"), ":arrows_clockwise:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x84"), ":arrows_counterclockwise:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x99"), ":back:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x9a"), ":end:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x9b"), ":on:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x9c"), ":soon:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x9d"), ":top:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x9b\x90"), ":place_of_worship:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9a\x9b"), ":atom:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x89"), ":om_symbol:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9c\xa1"), ":star_of_david:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\xb8"), ":wheel_of_dharma:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\xaf"), ":yin_yang:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9c\x9d"), ":cross:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\xa6"), ":orthodox_cross:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\xaa"), ":star_and_crescent:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\xae"), ":peace:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x95\x8e"), ":menorah:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xaf"), ":six_pointed_star:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\x88"), ":aries:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\x89"), ":taurus:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\x8a"), ":gemini:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\x8b"), ":cancer:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\x8c"), ":leo:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\x8d"), ":virgo:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\x8e"), ":libra:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\x8f"), ":scorpius:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\x90"), ":sagittarius:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\x91"), ":capricorn:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\x92"), ":aquarius:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\x93"), ":pisces:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9b\x8e"), ":ophiuchus:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x80"), ":twisted_rightwards_arrows:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x81"), ":repeat:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x82"), ":repeat_one:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x96\xb6"), ":arrow_forward:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x8f\xa9"), ":fast_forward:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x8f\xad"), ":track_next:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x8f\xaf"), ":play_pause:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x97\x80"), ":arrow_backward:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x8f\xaa"), ":rewind:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x8f\xae"), ":track_previous:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xbc"), ":arrow_up_small:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x8f\xab"), ":arrow_double_up:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xbd"), ":arrow_down_small:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x8f\xac"), ":arrow_double_down:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x8f\xb8"), ":pause_button:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x8f\xb9"), ":stop_button:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x8f\xba"), ":record_button:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x8f\x8f"), ":eject:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x8e\xa6"), ":cinema:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x85"), ":low_brightness:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x86"), ":high_brightness:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xb6"), ":signal_strength:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xb3"), ":vibration_mode:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\xb4"), ":mobile_phone_off:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x99\xbb"), ":recycle:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x93\x9b"), ":name_badge:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9a\x9c"), ":fleur-de-lis:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xb0"), ":beginner:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xb1"), ":trident:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\xad\x95"), ":o:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9c\x85"), ":white_check_mark:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x98\x91"), ":ballot_box_with_check:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9c\x94"), ":heavy_check_mark:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9c\x96"), ":heavy_multiplication_x:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9d\x8c"), ":x:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9d\x8e"), ":negative_squared_cross_mark:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9e\x95"), ":heavy_plus_sign:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9e\x96"), ":heavy_minus_sign:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9e\x97"), ":heavy_division_sign:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9e\xb0"), ":curly_loop:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9e\xbf"), ":loop:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe3\x80\xbd"), ":part_alternation_mark:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9c\xb3"), ":eight_spoked_asterisk:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9c\xb4"), ":eight_pointed_black_star:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9d\x87"), ":sparkle:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x80\xbc"), ":bangbang:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x81\x89"), ":interrobang:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9d\x93"), ":question:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9d\x94"), ":grey_question:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9d\x95"), ":grey_exclamation:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9d\x97"), ":exclamation:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe3\x80\xb0"), ":wavy_dash:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xc2\xa9"), ":copyright:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xc2\xae"), ":registered:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x84\xa2"), ":tm:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("#\xe2\x83\xa3"), ":hash:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("*\xe2\x83\xa3"), ":asterisk:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("0\xe2\x83\xa3"), ":zero:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("1\xe2\x83\xa3"), ":one:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("2\xe2\x83\xa3"), ":two:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("3\xe2\x83\xa3"), ":three:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("4\xe2\x83\xa3"), ":four:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("5\xe2\x83\xa3"), ":five:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("6\xe2\x83\xa3"), ":six:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("7\xe2\x83\xa3"), ":seven:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("8\xe2\x83\xa3"), ":eight:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("9\xe2\x83\xa3"), ":nine:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x9f"), ":keycap_ten:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xaf"), ":100:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xa0"), ":capital_abcd:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xa1"), ":abcd:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xa2"), ":1234:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xa3"), ":symbols:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xa4"), ":abc:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x85\xb0"), ":a:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x86\x8e"), ":ab:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x85\xb1"), ":b:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x86\x91"), ":cl:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x86\x92"), ":cool:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x86\x93"), ":free:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x84\xb9"), ":information_source:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x86\x94"), ":identifier:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x93\x82"), ":m:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x86\x95"), ":new:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x86\x96"), ":ng:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x85\xbe"), ":o2:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x86\x97"), ":ok:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x85\xbf"), ":parking:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x86\x98"), ":sos:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x86\x99"), ":up:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x86\x9a"), ":vs:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x88\x81"), ":koko:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x88\x82"), ":sa:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x88\xb7"), ":u6708:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x88\xb6"), ":u6709:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x88\xaf"), ":u6307:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x89\x90"), ":ideograph_advantage:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x88\xb9"), ":u5272:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x88\x9a"), ":u7121:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x88\xb2"), ":u7981:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x89\x91"), ":accept:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x88\xb8"), ":u7533:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x88\xb4"), ":u5408:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x88\xb3"), ":u7a7a:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe3\x8a\x97"), ":congratulations:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe3\x8a\x99"), ":secret:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x88\xba"), ":u55b6:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x88\xb5"), ":u6e80:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x96\xaa"), ":black_small_square:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x96\xab"), ":white_small_square:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x97\xbb"), ":white_medium_square:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x97\xbc"), ":black_medium_square:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x97\xbd"), ":white_medium_small_square:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x97\xbe"), ":black_medium_small_square:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\xac\x9b"), ":black_large_square:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\xac\x9c"), ":white_large_square:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xb6"), ":large_orange_diamond:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xb7"), ":large_blue_diamond:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xb8"), ":small_orange_diamond:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xb9"), ":small_blue_diamond:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xba"), ":small_red_triangle:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xbb"), ":small_red_triangle_down:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x92\xa0"), ":diamond_shape_with_a_dot_inside:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\x98"), ":radio_button:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xb2"), ":black_square_button:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xb3"), ":white_square_button:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9a\xaa"), ":white_circle:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xe2\x9a\xab"), ":black_circle:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xb4"), ":red_circle:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x94\xb5"), ":blue_circle:" }),
    //  }

    //  private const GLib.VariantList FLAGS = {
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa6\xf0\x9f\x87\xa8"), ":flag_ac:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa6\xf0\x9f\x87\xa9"), ":flag_ad:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa6\xf0\x9f\x87\xaa"), ":flag_ae:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa6\xf0\x9f\x87\xab"), ":flag_af:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa6\xf0\x9f\x87\xac"), ":flag_ag:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa6\xf0\x9f\x87\xae"), ":flag_ai:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa6\xf0\x9f\x87\xb1"), ":flag_al:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa6\xf0\x9f\x87\xb2"), ":flag_am:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa6\xf0\x9f\x87\xb4"), ":flag_ao:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa6\xf0\x9f\x87\xb6"), ":flag_aq:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa6\xf0\x9f\x87\xb7"), ":flag_ar:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa6\xf0\x9f\x87\xb8"), ":flag_as:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa6\xf0\x9f\x87\xb9"), ":flag_at:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa6\xf0\x9f\x87\xba"), ":flag_au:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa6\xf0\x9f\x87\xbc"), ":flag_aw:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa6\xf0\x9f\x87\xbd"), ":flag_ax:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa6\xf0\x9f\x87\xbf"), ":flag_az:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xa6"), ":flag_ba:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xa7"), ":flag_bb:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xa9"), ":flag_bd:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xaa"), ":flag_be:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xab"), ":flag_bf:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xac"), ":flag_bg:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xad"), ":flag_bh:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xae"), ":flag_bi:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xaf"), ":flag_bj:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xb1"), ":flag_bl:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xb2"), ":flag_bm:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xb3"), ":flag_bn:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xb4"), ":flag_bo:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xb6"), ":flag_bq:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xb7"), ":flag_br:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xb8"), ":flag_bs:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xb9"), ":flag_bt:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xbb"), ":flag_bv:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xbc"), ":flag_bw:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xbe"), ":flag_by:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa7\xf0\x9f\x87\xbf"), ":flag_bz:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xa6"), ":flag_ca:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xa8"), ":flag_cc:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xa9"), ":flag_cd:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xab"), ":flag_cf:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xac"), ":flag_cg:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xad"), ":flag_ch:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xae"), ":flag_ci:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xb0"), ":flag_ck:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xb1"), ":flag_cl:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xb2"), ":flag_cm:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xb3"), ":flag_cn:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xb4"), ":flag_co:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xb5"), ":flag_cp:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xb7"), ":flag_cr:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xba"), ":flag_cu:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xbb"), ":flag_cv:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xbc"), ":flag_cw:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xbd"), ":flag_cx:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xbe"), ":flag_cy:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa8\xf0\x9f\x87\xbf"), ":flag_cz:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa9\xf0\x9f\x87\xaa"), ":flag_de:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa9\xf0\x9f\x87\xac"), ":flag_dg:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa9\xf0\x9f\x87\xaf"), ":flag_dj:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa9\xf0\x9f\x87\xb0"), ":flag_dk:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa9\xf0\x9f\x87\xb2"), ":flag_dm:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa9\xf0\x9f\x87\xb4"), ":flag_do:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xa9\xf0\x9f\x87\xbf"), ":flag_dz:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xaa\xf0\x9f\x87\xa6"), ":flag_ea:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xaa\xf0\x9f\x87\xa8"), ":flag_ec:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xaa\xf0\x9f\x87\xaa"), ":flag_ee:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xaa\xf0\x9f\x87\xac"), ":flag_eg:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xaa\xf0\x9f\x87\xad"), ":flag_eh:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xaa\xf0\x9f\x87\xb7"), ":flag_er:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xaa\xf0\x9f\x87\xb8"), ":flag_es:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xaa\xf0\x9f\x87\xb9"), ":flag_et:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xaa\xf0\x9f\x87\xba"), ":flag_eu:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xab\xf0\x9f\x87\xae"), ":flag_fi:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xab\xf0\x9f\x87\xaf"), ":flag_fj:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xab\xf0\x9f\x87\xb0"), ":flag_fk:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xab\xf0\x9f\x87\xb2"), ":flag_font_metrics:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xab\xf0\x9f\x87\xb4"), ":flag_fo:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xab\xf0\x9f\x87\xb7"), ":flag_fr:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xa6"), ":flag_ga:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xa7"), ":flag_gb:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xa9"), ":flag_gd:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xaa"), ":flag_ge:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xab"), ":flag_gf:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xac"), ":flag_gg:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xad"), ":flag_gh:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xae"), ":flag_gi:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xb1"), ":flag_gl:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xb2"), ":flag_gm:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xb3"), ":flag_gn:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xb5"), ":flag_gp:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xb6"), ":flag_gq:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xb7"), ":flag_gr:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xb8"), ":flag_gs:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xb9"), ":flag_gt:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xba"), ":flag_gu:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xbc"), ":flag_gw:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xac\xf0\x9f\x87\xbe"), ":flag_gy:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xad\xf0\x9f\x87\xb0"), ":flag_hk:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xad\xf0\x9f\x87\xb2"), ":flag_hm:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xad\xf0\x9f\x87\xb3"), ":flag_hn:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xad\xf0\x9f\x87\xb7"), ":flag_hr:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xad\xf0\x9f\x87\xb9"), ":flag_ht:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xad\xf0\x9f\x87\xba"), ":flag_hu:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xae\xf0\x9f\x87\xa8"), ":flag_ic:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xae\xf0\x9f\x87\xa9"), ":flag_id:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xae\xf0\x9f\x87\xaa"), ":flag_ie:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xae\xf0\x9f\x87\xb1"), ":flag_il:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xae\xf0\x9f\x87\xb2"), ":flag_im:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xae\xf0\x9f\x87\xb3"), ":flag_in:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xae\xf0\x9f\x87\xb4"), ":flag_io:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xae\xf0\x9f\x87\xb6"), ":flag_iq:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xae\xf0\x9f\x87\xb7"), ":flag_ir:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xae\xf0\x9f\x87\xb8"), ":flag_is:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xae\xf0\x9f\x87\xb9"), ":flag_it:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xaf\xf0\x9f\x87\xaa"), ":flag_je:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xaf\xf0\x9f\x87\xb2"), ":flag_jm:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xaf\xf0\x9f\x87\xb4"), ":flag_jo:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xaf\xf0\x9f\x87\xb5"), ":flag_jp:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb0\xf0\x9f\x87\xaa"), ":flag_ke:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb0\xf0\x9f\x87\xac"), ":flag_kg:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb0\xf0\x9f\x87\xad"), ":flag_kh:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb0\xf0\x9f\x87\xae"), ":flag_ki:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb0\xf0\x9f\x87\xb2"), ":flag_km:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb0\xf0\x9f\x87\xb3"), ":flag_kn:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb0\xf0\x9f\x87\xb5"), ":flag_kp:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb0\xf0\x9f\x87\xb7"), ":flag_kr:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb0\xf0\x9f\x87\xbc"), ":flag_kw:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb0\xf0\x9f\x87\xbe"), ":flag_ky:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb0\xf0\x9f\x87\xbf"), ":flag_kz:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb1\xf0\x9f\x87\xa6"), ":flag_la:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb1\xf0\x9f\x87\xa7"), ":flag_lb:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb1\xf0\x9f\x87\xa8"), ":flag_lc:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb1\xf0\x9f\x87\xae"), ":flag_li:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb1\xf0\x9f\x87\xb0"), ":flag_lk:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb1\xf0\x9f\x87\xb7"), ":flag_lr:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb1\xf0\x9f\x87\xb8"), ":flag_ls:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb1\xf0\x9f\x87\xb9"), ":flag_lt:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb1\xf0\x9f\x87\xba"), ":flag_lu:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb1\xf0\x9f\x87\xbb"), ":flag_lv:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb1\xf0\x9f\x87\xbe"), ":flag_ly:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xa6"), ":flag_ma:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xa8"), ":flag_mc:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xa9"), ":flag_md:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xaa"), ":flag_me:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xab"), ":flag_mf:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xac"), ":flag_mg:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xad"), ":flag_mh:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xb0"), ":flag_mk:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xb1"), ":flag_ml:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xb2"), ":flag_mm:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xb3"), ":flag_mn:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xb4"), ":flag_mo:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xb5"), ":flag_mp:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xb6"), ":flag_mq:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xb7"), ":flag_mr:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xb8"), ":flag_ms:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xb9"), ":flag_mt:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xba"), ":flag_mu:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xbb"), ":flag_mv:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xbc"), ":flag_mw:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xbd"), ":flag_mx:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xbe"), ":flag_my:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb2\xf0\x9f\x87\xbf"), ":flag_mz:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb3\xf0\x9f\x87\xa6"), ":flag_na:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb3\xf0\x9f\x87\xa8"), ":flag_nc:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb3\xf0\x9f\x87\xaa"), ":flag_ne:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb3\xf0\x9f\x87\xab"), ":flag_nf:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb3\xf0\x9f\x87\xac"), ":flag_ng:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb3\xf0\x9f\x87\xae"), ":flag_ni:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb3\xf0\x9f\x87\xb1"), ":flag_nl:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb3\xf0\x9f\x87\xb4"), ":flag_no:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb3\xf0\x9f\x87\xb5"), ":flag_np:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb3\xf0\x9f\x87\xb7"), ":flag_nr:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb3\xf0\x9f\x87\xba"), ":flag_nu:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb3\xf0\x9f\x87\xbf"), ":flag_nz:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb4\xf0\x9f\x87\xb2"), ":flag_om:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb5\xf0\x9f\x87\xa6"), ":flag_pa:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb5\xf0\x9f\x87\xaa"), ":flag_pe:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb5\xf0\x9f\x87\xab"), ":flag_pf:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb5\xf0\x9f\x87\xac"), ":flag_pg:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb5\xf0\x9f\x87\xad"), ":flag_ph:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb5\xf0\x9f\x87\xb0"), ":flag_pk:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb5\xf0\x9f\x87\xb1"), ":flag_pl:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb5\xf0\x9f\x87\xb2"), ":flag_pm:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb5\xf0\x9f\x87\xb3"), ":flag_pn:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb5\xf0\x9f\x87\xb7"), ":flag_pr:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb5\xf0\x9f\x87\xb8"), ":flag_ps:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb5\xf0\x9f\x87\xb9"), ":flag_pt:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb5\xf0\x9f\x87\xbc"), ":flag_pw:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb5\xf0\x9f\x87\xbe"), ":flag_py:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb6\xf0\x9f\x87\xa6"), ":flag_qa:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb7\xf0\x9f\x87\xaa"), ":flag_re:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb7\xf0\x9f\x87\xb4"), ":flag_ro:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb7\xf0\x9f\x87\xb8"), ":flag_rs:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb7\xf0\x9f\x87\xba"), ":flag_ru:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb7\xf0\x9f\x87\xbc"), ":flag_rw:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xa6"), ":flag_sa:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xa7"), ":flag_sb:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xa8"), ":flag_sc:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xa9"), ":flag_sd:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xaa"), ":flag_se:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xac"), ":flag_sg:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xad"), ":flag_sh:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xae"), ":flag_si:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xaf"), ":flag_sj:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xb0"), ":flag_sk:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xb1"), ":flag_sl:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xb2"), ":flag_sm:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xb3"), ":flag_sn:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xb4"), ":flag_so:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xb7"), ":flag_sr:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xb8"), ":flag_ss:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xb9"), ":flag_st:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xbb"), ":flag_sv:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xbd"), ":flag_sx:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xbe"), ":flag_sy:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb8\xf0\x9f\x87\xbf"), ":flag_sz:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb9\xf0\x9f\x87\xa6"), ":flag_ta:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb9\xf0\x9f\x87\xa8"), ":flag_tc:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb9\xf0\x9f\x87\xa9"), ":flag_td:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb9\xf0\x9f\x87\xab"), ":flag_tf:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb9\xf0\x9f\x87\xac"), ":flag_tg:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb9\xf0\x9f\x87\xad"), ":flag_th:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb9\xf0\x9f\x87\xaf"), ":flag_tj:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb9\xf0\x9f\x87\xb0"), ":flag_tk:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb9\xf0\x9f\x87\xb1"), ":flag_tl:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb9\xf0\x9f\x87\xb2"), ":flag_tm:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb9\xf0\x9f\x87\xb3"), ":flag_tn:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb9\xf0\x9f\x87\xb4"), ":flag_to:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb9\xf0\x9f\x87\xb7"), ":flag_tr:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb9\xf0\x9f\x87\xb9"), ":flag_tt:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb9\xf0\x9f\x87\xbb"), ":flag_tv:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb9\xf0\x9f\x87\xbc"), ":flag_tw:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xb9\xf0\x9f\x87\xbf"), ":flag_tz:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xba\xf0\x9f\x87\xa6"), ":flag_ua:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xba\xf0\x9f\x87\xac"), ":flag_ug:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xba\xf0\x9f\x87\xb2"), ":flag_um:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xba\xf0\x9f\x87\xb8"), ":flag_us:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xba\xf0\x9f\x87\xbe"), ":flag_uy:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xba\xf0\x9f\x87\xbf"), ":flag_uz:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xbb\xf0\x9f\x87\xa6"), ":flag_va:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xbb\xf0\x9f\x87\xa8"), ":flag_vc:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xbb\xf0\x9f\x87\xaa"), ":flag_ve:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xbb\xf0\x9f\x87\xac"), ":flag_vg:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xbb\xf0\x9f\x87\xae"), ":flag_vi:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xbb\xf0\x9f\x87\xb3"), ":flag_vn:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xbb\xf0\x9f\x87\xba"), ":flag_vu:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xbc\xf0\x9f\x87\xab"), ":flag_wf:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xbc\xf0\x9f\x87\xb8"), ":flag_ws:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xbd\xf0\x9f\x87\xb0"), ":flag_xk:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xbe\xf0\x9f\x87\xaa"), ":flag_ye:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xbe\xf0\x9f\x87\xb9"), ":flag_yt:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xbf\xf0\x9f\x87\xa6"), ":flag_za:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xbf\xf0\x9f\x87\xb2"), ":flag_zm:"
        //  }),
        //  GLib.Variant.from_value (Emoji {
        //      string.from_utf8 ("\xf0\x9f\x87\xbf\xf0\x9f\x87\xbc"), ":flag_zw:" }),
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  private GLib.Settings settings;

    //  /***********************************************************
    //  ***********************************************************/
    //  EmojiCategoriesModel emoji_categories_model {
        //  public get {
        //      return this.emoji_categories_model;
        //  }
        //  private set {
        //      this.emoji_categories_model = value;
        //  }
    //  }


    //  internal signal void signal_history_changed ();
    //  internal signal void signal_model_changed ();


    //  /***********************************************************
    //  ***********************************************************/
    //  public EmojiModel () {
        //  base ();
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  public GLib.VariantList history () {
        //  return this.settings.get_value ("Editor/emojis", GLib.VariantList ()).to_list ();
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  public void category (string category) {
        //  if (this.category == category) {
        //      return;
        //  }
        //  this.category = category;
        //  signal_model_changed ();
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  public void emoji_used (GLib.Variant model_data) {
        //  var history_emojis = history ();

        //  var history_emojis_iter = history_emojis.begin ();
        //  while (history_emojis_iter != history_emojis.end ()) {
        //      if ( (history_emojis_iter).value<Emoji> ().unicode == model_data.value<Emoji> ().unicode) {
        //          history_emojis_iter = history_emojis.erase (history_emojis_iter);
        //      } else {
        //          history_emojis_iter++;
        //      }
        //  }

        //  history_emojis.push_front (model_data);
        //  this.settings.get_value ("Editor/emojis", history_emojis);

        //  signal_history_changed ();
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  public GLib.VariantList model () {
        //  if (this.category == "history") {
        //      return history ();
        //  } else if (this.category == "people") {
        //      return PEOPLE;
        //  } else if (this.category == "nature") {
        //      return NATURE;
        //  } else if (this.category == "food") {
        //      return FOOD;
        //  } else if (this.category == "activity") {
        //      return ACTIVITY;
        //  } else if (this.category == "travel") {
        //      return TRAVEL;
        //  } else if (this.category == "objects") {
        //      return OBJECTS;
        //  } else if (this.category == "symbols") {
        //      return SYMBOLS;
        //  } else if (this.category == "flags") {
        //      return FLAGS;
        //  }
        //  return history ();
    //  }

} // class EmojiModel

} // namespace Ui
} // namespace Occ
