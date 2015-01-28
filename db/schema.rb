# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150128033946) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academic_unities", force: true do |t|
    t.string   "abbreviation"
    t.string   "short_name"
    t.string   "name"
    t.integer  "faculty_id"
    t.string   "url"
    t.string   "email"
    t.string   "address"
    t.text     "information",    default: ""
    t.string   "facebook"
    t.string   "twitter"
    t.integer  "place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comments_count", default: 0,  null: false
    t.integer  "likes_count",    default: 0,  null: false
    t.integer  "dislikes_count", default: 0,  null: false
  end

  add_index "academic_unities", ["abbreviation", "faculty_id"], name: "index_academic_unities_on_abbreviation_and_organization_id", unique: true, using: :btree
  add_index "academic_unities", ["faculty_id"], name: "index_academic_unities_on_faculty_id", using: :btree
  add_index "academic_unities", ["place_id"], name: "index_academic_unities_on_place_id", using: :btree

  create_table "academic_unities_teachers", id: false, force: true do |t|
    t.integer "teacher_id",        null: false
    t.integer "academic_unity_id", null: false
  end

  add_index "academic_unities_teachers", ["academic_unity_id"], name: "index_academic_unities_teachers_on_academic_unity_id", using: :btree
  add_index "academic_unities_teachers", ["teacher_id", "academic_unity_id"], name: "index_academic_teachers_on_teacher_id_and_academic_unity_id", unique: true, using: :btree
  add_index "academic_unities_teachers", ["teacher_id"], name: "index_academic_unities_teachers_on_teacher_id", using: :btree

  create_table "api_keys", force: true do |t|
    t.string   "client",        default: "",   null: false
    t.string   "key",           default: "",   null: false
    t.string   "contact_name",  default: "",   null: false
    t.string   "contact_email", default: "",   null: false
    t.boolean  "valid_key",     default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assistantships", force: true do |t|
    t.integer  "section_id", null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assistantships", ["section_id", "user_id"], name: "index_assistantships_sections_and_users", unique: true, using: :btree
  add_index "assistantships", ["section_id"], name: "index_assistantships_on_section_id", using: :btree
  add_index "assistantships", ["user_id"], name: "index_assistantships_on_user_id", using: :btree

  create_table "buildings", force: true do |t|
    t.string   "abbreviation"
    t.string   "short_name"
    t.string   "name"
    t.integer  "campus_id",                   null: false
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.string   "url"
    t.string   "facebook"
    t.string   "twitter"
    t.text     "information",    default: ""
    t.integer  "place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comments_count", default: 0,  null: false
    t.integer  "likes_count",    default: 0,  null: false
    t.integer  "dislikes_count", default: 0,  null: false
  end

  add_index "buildings", ["campus_id"], name: "index_buildings_on_campus_id", using: :btree
  add_index "buildings", ["place_id"], name: "index_buildings_on_place_id", using: :btree

  create_table "campuses", force: true do |t|
    t.string   "abbreviation"
    t.string   "short_name"
    t.string   "name"
    t.integer  "organization_id",              null: false
    t.string   "address"
    t.string   "url"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "phone"
    t.string   "email"
    t.text     "information",     default: ""
    t.integer  "place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comments_count",  default: 0,  null: false
    t.integer  "likes_count",     default: 0,  null: false
    t.integer  "dislikes_count",  default: 0,  null: false
  end

  add_index "campuses", ["abbreviation", "organization_id"], name: "index_campuses_on_cid_and_organization_id", unique: true, using: :btree
  add_index "campuses", ["organization_id"], name: "index_campuses_on_organization_id", using: :btree
  add_index "campuses", ["place_id"], name: "index_campuses_on_place_id", using: :btree

  create_table "careers", force: true do |t|
    t.string   "name",                           null: false
    t.string   "url"
    t.string   "curriculum_url"
    t.integer  "academic_unity_id"
    t.text     "information",       default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comments_count",    default: 0,  null: false
    t.integer  "likes_count",       default: 0,  null: false
    t.integer  "dislikes_count",    default: 0,  null: false
  end

  add_index "careers", ["academic_unity_id"], name: "index_careers_on_academic_unity_id", using: :btree

  create_table "chat_messages", force: true do |t|
    t.integer  "chat_participantship_id"
    t.text     "content",                 default: "",    null: false
    t.boolean  "flagged",                 default: false, null: false
    t.boolean  "hidden",                  default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chat_messages", ["chat_participantship_id"], name: "index_chat_messages_on_chat_participantship_id", using: :btree

  create_table "chat_participantships", force: true do |t|
    t.integer  "chat_id"
    t.integer  "user_id"
    t.boolean  "active",      default: false, null: false
    t.boolean  "muted",       default: false, null: false
    t.boolean  "banned",      default: false, null: false
    t.text     "appointment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chat_participantships", ["chat_id"], name: "index_chat_participantships_on_chat_id", using: :btree
  add_index "chat_participantships", ["user_id"], name: "index_chat_participantships_on_user_id", using: :btree

  create_table "chats", force: true do |t|
    t.integer  "conversable_id"
    t.string   "conversable_type"
    t.string   "title",            default: ""
    t.boolean  "available",        default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chats", ["conversable_id", "conversable_type"], name: "index_chats_on_conversable_id_and_conversable_type", using: :btree

  create_table "comments", force: true do |t|
    t.integer  "user_id",                          null: false
    t.integer  "commentable_id",                   null: false
    t.string   "commentable_type",                 null: false
    t.text     "comment",          default: "",    null: false
    t.boolean  "hidden",           default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "anonymous",        default: false, null: false
    t.integer  "comments_count",   default: 0,     null: false
    t.integer  "likes_count",      default: 0,     null: false
    t.integer  "dislikes_count",   default: 0,     null: false
  end

  add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "courses", force: true do |t|
    t.string   "initials",                         null: false
    t.string   "name"
    t.integer  "credits"
    t.boolean  "availability",      default: true
    t.integer  "academic_unity_id"
    t.text     "information",       default: ""
    t.integer  "capacity"
    t.integer  "enrolled"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comments_count",    default: 0,    null: false
    t.integer  "likes_count",       default: 0,    null: false
    t.integer  "dislikes_count",    default: 0,    null: false
  end

  add_index "courses", ["academic_unity_id"], name: "index_courses_on_academic_unity_id", using: :btree
  add_index "courses", ["initials"], name: "index_courses_on_initials", unique: true, using: :btree

  create_table "enrolled_careers", force: true do |t|
    t.integer  "user_id",        null: false
    t.integer  "career_id",      null: false
    t.string   "curriculum"
    t.date     "admission_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enrolled_careers", ["career_id"], name: "index_enrolled_careers_on_career_id", using: :btree
  add_index "enrolled_careers", ["user_id", "career_id"], name: "index_enrolled_careers_on_user_id_and_career_id", unique: true, using: :btree
  add_index "enrolled_careers", ["user_id"], name: "index_enrolled_careers_on_user_id", using: :btree

  create_table "events", force: true do |t|
    t.string   "title",                          null: false
    t.boolean  "private",        default: false
    t.text     "information",    default: "",    null: false
    t.datetime "publish_date",                   null: false
    t.integer  "place_id"
    t.datetime "from_date"
    t.datetime "to_date",                        null: false
    t.integer  "user_id"
    t.integer  "host_id",                        null: false
    t.string   "host_type",                      null: false
    t.string   "facebook_url"
    t.string   "external_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comments_count", default: 0,     null: false
    t.integer  "likes_count",    default: 0,     null: false
    t.integer  "dislikes_count", default: 0,     null: false
  end

  add_index "events", ["host_id", "host_type"], name: "index_events_on_host_id_and_host_type", using: :btree
  add_index "events", ["place_id"], name: "index_events_on_place_id", using: :btree
  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "events_assistances", force: true do |t|
    t.integer  "event_id",   null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events_assistances", ["event_id"], name: "index_events_assistances_on_event_id", using: :btree
  add_index "events_assistances", ["user_id", "event_id"], name: "index_events_assistances_on_user_id_and_event_id", unique: true, using: :btree
  add_index "events_assistances", ["user_id"], name: "index_events_assistances_on_user_id", using: :btree

  create_table "faculties", force: true do |t|
    t.string   "abbreviation"
    t.string   "short_name"
    t.string   "name"
    t.integer  "campus_id",                   null: false
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.string   "url"
    t.string   "facebook"
    t.text     "information",    default: ""
    t.string   "twitter"
    t.integer  "place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comments_count", default: 0,  null: false
    t.integer  "likes_count",    default: 0,  null: false
    t.integer  "dislikes_count", default: 0,  null: false
  end

  add_index "faculties", ["abbreviation", "campus_id"], name: "index_faculties_on_abbreviation_and_campus_id", unique: true, using: :btree
  add_index "faculties", ["campus_id"], name: "index_faculties_on_campus_id", using: :btree
  add_index "faculties", ["place_id"], name: "index_faculties_on_place_id", using: :btree
  add_index "faculties", ["short_name", "campus_id"], name: "index_faculties_on_short_name_and_campus_id", unique: true, using: :btree

  create_table "faculties_groups", force: true do |t|
    t.integer "group_id",   null: false
    t.integer "faculty_id", null: false
  end

  add_index "faculties_groups", ["faculty_id"], name: "index_faculties_groups_on_faculty_id", using: :btree
  add_index "faculties_groups", ["group_id", "faculty_id"], name: "index_faculties_groups_on_group_id_and_faculty_id", unique: true, using: :btree
  add_index "faculties_groups", ["group_id"], name: "index_faculties_groups_on_group_id", using: :btree

  create_table "friendships", force: true do |t|
    t.integer  "user_id",                    null: false
    t.integer  "friend_id",                  null: false
    t.boolean  "accepted",   default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "friendships", ["friend_id"], name: "index_friendships_on_friend_id", using: :btree
  add_index "friendships", ["user_id", "friend_id"], name: "index_friendships_on_user_id_and_friend_id", unique: true, using: :btree
  add_index "friendships", ["user_id"], name: "index_friendships_on_user_id", using: :btree

  create_table "groups", force: true do |t|
    t.string   "name",                        null: false
    t.string   "email",                       null: false
    t.string   "url"
    t.string   "facebook"
    t.string   "twitter"
    t.text     "information",    default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comments_count", default: 0,  null: false
    t.integer  "likes_count",    default: 0,  null: false
    t.integer  "dislikes_count", default: 0,  null: false
  end

  create_table "groups_organizations", force: true do |t|
    t.integer "group_id",        null: false
    t.integer "organization_id", null: false
  end

  add_index "groups_organizations", ["group_id", "organization_id"], name: "index_groups_organizations_on_group_id_and_organization_id", unique: true, using: :btree
  add_index "groups_organizations", ["group_id"], name: "index_groups_organizations_on_group_id", using: :btree
  add_index "groups_organizations", ["organization_id"], name: "index_groups_organizations_on_organization_id", using: :btree

  create_table "groups_subscribers", force: true do |t|
    t.integer  "user_id",                      null: false
    t.integer  "group_id",                     null: false
    t.boolean  "visible_mail",  default: true
    t.boolean  "notifications", default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups_subscribers", ["group_id"], name: "index_groups_subscribers_on_group_id", using: :btree
  add_index "groups_subscribers", ["user_id", "group_id"], name: "index_groups_subscribers_on_user_id_and_group_id", unique: true, using: :btree
  add_index "groups_subscribers", ["user_id"], name: "index_groups_subscribers_on_user_id", using: :btree

  create_table "likes", force: true do |t|
    t.integer  "user_id",                   null: false
    t.integer  "valuation",     default: 1, null: false
    t.integer  "likeable_id",               null: false
    t.string   "likeable_type",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "likes", ["likeable_id", "likeable_type"], name: "index_likes_on_likeable_id_and_likeable_type", using: :btree
  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "organizations", force: true do |t|
    t.string   "name"
    t.string   "short_name"
    t.string   "abbreviation",                null: false
    t.text     "information",    default: ""
    t.string   "image"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "facebook"
    t.string   "twitter"
    t.integer  "place_id"
    t.string   "address"
    t.string   "phone"
    t.integer  "comments_count", default: 0,  null: false
    t.integer  "likes_count",    default: 0,  null: false
    t.integer  "dislikes_count", default: 0,  null: false
  end

  add_index "organizations", ["abbreviation"], name: "index_organizations_on_abbreviation", unique: true, using: :btree
  add_index "organizations", ["place_id"], name: "index_organizations_on_place_id", using: :btree

  create_table "places", force: true do |t|
    t.string   "identifier",                     null: false
    t.string   "name"
    t.boolean  "service",        default: false, null: false
    t.integer  "area_id",                        null: false
    t.string   "area_type",                      null: false
    t.text     "information",    default: ""
    t.float    "zoom",           default: 0.0
    t.float    "angle",          default: 0.0
    t.float    "tilt",           default: 0.0
    t.float    "latitude",       default: 0.0
    t.float    "longitude",      default: 0.0
    t.string   "floor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comments_count", default: 0,     null: false
    t.integer  "likes_count",    default: 0,     null: false
    t.integer  "dislikes_count", default: 0,     null: false
  end

  add_index "places", ["area_id", "area_type"], name: "index_places_on_area_id_and_area_type", using: :btree
  add_index "places", ["identifier", "area_id", "area_type"], name: "index_places_on_identifier_and_area", unique: true, using: :btree

  create_table "posts", force: true do |t|
    t.integer  "user_id",                        null: false
    t.text     "content",        default: "",    null: false
    t.boolean  "notify",         default: false, null: false
    t.integer  "entity_id"
    t.string   "entity_type"
    t.integer  "target_id",                      null: false
    t.string   "target_type",                    null: false
    t.integer  "place_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "hidden",         default: false, null: false
    t.integer  "comments_count", default: 0,     null: false
    t.integer  "likes_count",    default: 0,     null: false
    t.integer  "dislikes_count", default: 0,     null: false
  end

  add_index "posts", ["entity_id", "entity_type"], name: "index_posts_on_entity_id_and_entity_type", using: :btree
  add_index "posts", ["event_id"], name: "index_posts_on_event_id", using: :btree
  add_index "posts", ["place_id"], name: "index_posts_on_place_id", using: :btree
  add_index "posts", ["target_id", "target_type"], name: "index_posts_on_target_id_and_target_type", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "schedule_items", force: true do |t|
    t.integer  "schedule_module_id"
    t.integer  "section_id",         null: false
    t.string   "class_type"
    t.string   "place_name"
    t.string   "campus_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "place_id"
    t.integer  "campus_id"
  end

  add_index "schedule_items", ["campus_id"], name: "index_schedule_items_on_campus_id", using: :btree
  add_index "schedule_items", ["place_id"], name: "index_schedule_items_on_place_id", using: :btree
  add_index "schedule_items", ["schedule_module_id"], name: "index_schedule_items_on_schedule_module_id", using: :btree
  add_index "schedule_items", ["section_id"], name: "index_schedule_items_on_section_id", using: :btree

  create_table "schedule_modules", force: true do |t|
    t.integer "organization_id",             null: false
    t.string  "initials",                    null: false
    t.integer "day",                         null: false
    t.integer "block",                       null: false
    t.integer "start_hour",      default: 0, null: false
    t.integer "start_minute",    default: 0, null: false
    t.integer "end_hour",        default: 0, null: false
    t.integer "end_minute",      default: 0, null: false
  end

  add_index "schedule_modules", ["initials", "organization_id"], name: "index_schedule_modules_on_initials_and_organization_id", unique: true, using: :btree

  create_table "sections", force: true do |t|
    t.integer  "course_id",               null: false
    t.integer  "number",                  null: false
    t.integer  "semester",                null: false
    t.integer  "year",                    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vacancy",    default: -1
  end

  add_index "sections", ["course_id"], name: "index_sections_on_course_id", using: :btree

  create_table "sections_teachers", id: false, force: true do |t|
    t.integer "teacher_id", null: false
    t.integer "section_id", null: false
  end

  add_index "sections_teachers", ["section_id"], name: "index_sections_teachers_on_section_id", using: :btree
  add_index "sections_teachers", ["teacher_id", "section_id"], name: "index_sections_teachers_on_teacher_id_and_section_id", unique: true, using: :btree
  add_index "sections_teachers", ["teacher_id"], name: "index_sections_teachers_on_teacher_id", using: :btree

  create_table "sections_users", id: false, force: true do |t|
    t.integer "user_id",    null: false
    t.integer "section_id", null: false
  end

  add_index "sections_users", ["section_id"], name: "index_sections_users_on_section_id", using: :btree
  add_index "sections_users", ["user_id", "section_id"], name: "index_sections_users_on_user_id_and_section_id", unique: true, using: :btree
  add_index "sections_users", ["user_id"], name: "index_sections_users_on_teacher_id", using: :btree

  create_table "teachers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "url"
    t.text     "information",    default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comments_count", default: 0,  null: false
    t.integer  "likes_count",    default: 0,  null: false
    t.integer  "dislikes_count", default: 0,  null: false
  end

  add_index "teachers", ["name"], name: "index_teachers_on_name", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "username",                               null: false
    t.string   "email",                  default: "",    null: false
    t.string   "student_id"
    t.integer  "organization_id",                        null: false
    t.boolean  "admin",                  default: false
    t.boolean  "male",                   default: true
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider",                               null: false
    t.string   "uid",                    default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.text     "tokens"
    t.boolean  "findeable",              default: true,  null: false
  end

  add_index "users", ["organization_id"], name: "index_users_on_organization_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree

  create_table "webpages", force: true do |t|
    t.string   "identifier",                             null: false
    t.string   "name",                                   null: false
    t.string   "owner"
    t.integer  "organization_id",                        null: false
    t.integer  "page_type",              default: 0,     null: false
    t.text     "information",            default: "",    null: false
    t.boolean  "available",              default: true,  null: false
    t.boolean  "secure_protocol",        default: false, null: false
    t.boolean  "requires_login",         default: false, null: false
    t.boolean  "should_open_in_browser", default: true,  null: false
    t.string   "home_url",                               null: false
    t.string   "base_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "webpages", ["organization_id"], name: "index_webpages_on_organization_id", using: :btree

end
