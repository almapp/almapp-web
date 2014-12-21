class RestoreOldSchema < ActiveRecord::Migration
  def change
    create_table "academic_unities", force: true do |t|
      t.string   "short_name",  null: false
      t.string   "name"
      t.integer  "faculty_id"
      t.string   "slug",        null: false
      t.string   "url"
      t.string   "email"
      t.string   "address"
      t.text     "information"
      t.string   "facebook"
      t.string   "twitter"
      t.float    "zoom",            default: 0.0
      t.float    "angle",           default: 0.0
      t.float    "tilt",            default: 0.0
      t.float    "latitude",        default: 0.0
      t.float    "longitude",       default: 0.0
      t.string   "floor"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "academic_unities", ["faculty_id"], name: "index_academic_unities_on_faculty_id", using: :btree
    add_index "academic_unities", ["slug", "faculty_id"], name: "index_academic_unities_on_slug_and_faculty_id", unique: true, using: :btree

    create_table "assistantships", force: true do |t|
      t.integer  "section_id", null: false
      t.integer  "user_id",    null: false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "assistantships", ["section_id"], name: "index_assistantships_on_section_id", using: :btree
    add_index "assistantships", ["user_id"], name: "index_assistantships_on_user_id", using: :btree
    add_index "assistantships", ["section_id", "user_id"], name:"index_assistantships_sections_and_users", unique: true, using: :btree

    create_table "campuses", force: true do |t|
      t.string   "short_name",                    null: false
      t.string   "name",                          null: false
      t.string   "slug",                          null: false
      t.integer  "organization_id",               null: false
      t.string   "address"
      t.string   "url"
      t.string   "facebook"
      t.string   "twitter"
      t.string   "phone"
      t.string   "email"
      t.text     "description"
      t.float    "zoom",            default: 0.0
      t.float    "angle",           default: 0.0
      t.float    "tilt",            default: 0.0
      t.float    "latitude",        default: 0.0
      t.float    "longitude",       default: 0.0
      t.string   "floor"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "campuses", ["short_name", "organization_id"], name: "index_campuses_on_cid_and_organization_id", unique: true, using: :btree
    add_index "campuses", ["organization_id"], name: "index_campuses_on_organization_id", using: :btree
    add_index "campuses", ["slug", "organization_id"], name: "index_campuses_on_slug_and_organization_id", unique: true, using: :btree

    create_table "careers", force: true do |t|
      t.string   "name",              null: false
      t.string   "url"
      t.string   "slug",              null: false
      t.string   "curriculum_url"
      t.integer  "academic_unity_id"
      t.text     "information"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "careers", ["academic_unity_id"], name: "index_careers_on_academic_unity_id", using: :btree
    add_index "careers", ["slug", "academic_unity_id"], name: "index_careers_on_slug_and_academic_unity_id", unique: true, using: :btree

    create_table "courses", force: true do |t|
      t.string   "initials",                         null: false
      t.string   "name"
      t.string   "slug",                             null: false
      t.integer  "credits"
      t.boolean  "availability",      default: true
      t.integer  "academic_unity_id"
      t.text     "description"
      t.integer  "capacity"
      t.integer  "enrolled"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "courses", ["academic_unity_id"], name: "index_courses_on_academic_unity_id", using: :btree
    add_index "courses", ["initials"], name: "index_courses_on_initials", unique: true, using: :btree
    add_index "courses", ["slug", "academic_unity_id"], name: "index_courses_on_slug_and_academic_unity_id", unique: true, using: :btree

    create_table "enrolled_careers", force: true do |t|
      t.integer  "user_id",     null: false
      t.integer  "career_id",   null: false
      t.string   "curriculum"
      t.date     "admission_date"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "enrolled_careers", ["career_id"], name: "index_enrolled_careers_on_career_id", using: :btree
    add_index "enrolled_careers", ["user_id"], name: "index_enrolled_careers_on_user_id", using: :btree
    add_index "enrolled_careers", ["user_id", "career_id"], name: "index_enrolled_careers_on_user_id_and_career_id", unique: true, using: :btree

    create_table "comments", force: true do |t|
      t.integer  "user_id",                    null: false
      t.integer  "commentable_id",             null: false
      t.string   "commentable_type",           null: false
      t.text     "comment",    default: "",    null: false
      t.boolean  "hidden",     default: false, null: false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree
    add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type", using: :btree

    create_table "events", force: true do |t|
      t.string   "title",                           null: false
      t.string   "slug",                            null: false
      t.boolean  "private",         default: false
      t.text     "description",                     null: false
      t.datetime "publish_date",                    null: false
      t.integer  "place_id"
      t.datetime "from_date"
      t.datetime "to_date",                         null: false
      t.integer  "user_id"
      t.integer  "host_id",                         null: false
      t.string   "host_type",                       null: false
      t.string   "facebook_url"
      t.string   "external_url"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "events", ["place_id"], name: "index_events_on_place_id", using: :btree
    add_index "events", ["slug"], name: "index_events_on_slug", unique: true, using: :btree
    add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree
    add_index "events", ["host_id", "host_type"], name: "index_events_on_host_id_and_host_type", using: :btree

    create_table "events_assistances", index: false, force: true do |t|
      t.integer  "event_id",   null: false
      t.integer  "user_id",    null: false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "events_assistances", ["event_id"], name: "index_events_assistances_on_event_id", using: :btree
    add_index "events_assistances", ["user_id"], name: "index_events_assistances_on_user_id", using: :btree
    add_index "events_assistances", ["user_id", "event_id"], name: "index_events_assistances_on_user_id_and_event_id", unique: true, using: :btree

    create_table "faculties", force: true do |t|
      t.string   "abbreviation",              null: false
      t.string   "short_name",                null: false
      t.string   "name",                      null: false
      t.string   "slug",                      null: false
      t.integer  "campus_id",                 null: false
      t.string   "address"
      t.string   "phone"
      t.string   "email"
      t.string   "url"
      t.string   "facebook"
      t.text     "description"
      t.string   "twitter"
      t.float    "zoom",            default: 0.0
      t.float    "angle",           default: 0.0
      t.float    "tilt",            default: 0.0
      t.float    "latitude",        default: 0.0
      t.float    "longitude",       default: 0.0
      t.string   "floor"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "faculties", ["campus_id"], name: "index_faculties_on_campus_id", using: :btree
    add_index "faculties", ["abbreviation", "campus_id"], name: "index_faculties_on_abbreviation_and_campus_id", unique: true, using: :btree
    add_index "faculties", ["short_name", "campus_id"], name: "index_faculties_on_short_name_and_campus_id", unique: true, using: :btree
    add_index "faculties", ["slug", "campus_id"], name: "index_faculties_on_slug_and_campus_id", unique: true, using: :btree

    ## Better use clean setup
    # create_table "friendly_id_slugs", force: true do |t|
    #   t.string   "slug",                      null: false
    #   t.integer  "sluggable_id",              null: false
    #   t.string   "sluggable_type", limit: 50
    #   t.string   "scope"
    #   t.datetime "created_at"
    # end
    #
    # add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    # add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    # add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    # add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

    create_table "friendships", index: false, force: true do |t|
      t.integer  "user_id",                    null: false
      t.integer  "friend_id",                  null: false
      t.boolean  "accepted",   default: false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "friendships", ["friend_id"], name: "index_friendships_on_friend_id", using: :btree
    add_index "friendships", ["user_id"], name: "index_friendships_on_user_id", using: :btree
    add_index "friendships", ["user_id", "friend_id"], name: "index_friendships_on_user_id_and_friend_id", unique: true, using: :btree

    create_table "groups", force: true do |t|
      t.string   "name",            null: false
      t.string   "slug",            null: false
      t.string   "email",           null: false
      t.string   "url"
      t.string   "facebook"
      t.string   "twitter"
      t.text     "information"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "groups", ["slug"], name: "index_groups_on_slug", unique: true, using: :btree

    create_table "faculties_groups", index: false, force: true do |t|
      t.integer  "group_id",                    null: false
      t.integer  "faculty_id",                  null: false
    end

    add_index "faculties_groups", ["group_id"], name: "index_faculties_groups_on_group_id", using: :btree
    add_index "faculties_groups", ["faculty_id"], name: "index_faculties_groups_on_faculty_id", using: :btree
    add_index "faculties_groups", ["group_id", "faculty_id"], name: "index_faculties_groups_on_group_id_and_faculty_id", unique: true, using: :btree

    create_table "groups_organizations", index: false, force: true do |t|
      t.integer  "group_id",                    null: false
      t.integer  "organization_id",             null: false
    end

    add_index "groups_organizations", ["group_id"], name: "index_groups_organizations_on_group_id", using: :btree
    add_index "groups_organizations", ["organization_id"], name: "index_groups_organizations_on_organization_id", using: :btree
    add_index "groups_organizations", ["group_id", "organization_id"], name: "index_groups_organizations_on_group_id_and_organization_id", unique: true, using: :btree

    create_table "groups_subscribers", force: true do |t|
      t.integer  "user_id",                     null: false
      t.integer  "group_id",                    null: false
      t.boolean  "visible_mail",  default: true
      t.boolean  "notifications", default: true
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "groups_subscribers", ["group_id"], name: "index_groups_subscribers_on_group_id", using: :btree
    add_index "groups_subscribers", ["user_id"], name: "index_groups_subscribers_on_user_id", using: :btree
    add_index "groups_subscribers", ["user_id", "group_id"], name: "index_groups_subscribers_on_user_id_and_group_id", unique: true, using: :btree

    create_table "organizations", force: true do |t|
      t.string   "name",        null: false
      t.string   "slug",        null: false
      t.text     "information"
      t.string   "image"
      t.string   "url"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "facebook"
      t.string   "twitter"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "organizations", ["slug"], name: "index_organizations_on_slug", unique: true, using: :btree

    create_table "places", force: true do |t| # TODO polymorphic
      t.string   "identifier",                  null: false
      t.string   "slug",                        null: false
      t.string   "name"
      t.boolean  "service",     default: false, null: false
      t.integer  "campus_id"
      t.integer  "area_id",                     null: false
      t.string   "area_type",                   null: false
      t.text     "description"
      t.float    "zoom",        default: 0.0
      t.float    "angle",       default: 0.0
      t.float    "tilt",        default: 0.0
      t.float    "latitude",    default: 0.0
      t.float    "longitude",   default: 0.0
      t.string   "floor"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "places", ["campus_id"], name: "index_places_on_campus_id", using: :btree
    add_index "places", ["identifier", "campus_id"], name: "index_places_on_identifier_and_campus_id", unique: true, using: :btree
    add_index "places", ["slug", "campus_id"], name: "index_places_on_slug_and_campus_id", unique: true, using: :btree
    add_index "places", ["area_id", "area_type"], name: "index_places_on_area_id_and_area_type", using: :btree

    create_table "posts", force: true do |t|
      t.integer  "user_id",                                null: false
      t.text     "content",                default: "",    null: false
      t.boolean  "notify",                 default: false, null: false
      t.integer  "entity_id"
      t.string   "entity_type"
      t.integer  "target_id",                         null: false
      t.string   "target_type",                       null: false
      t.integer  "place_id"
      t.integer  "event_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "posts", ["event_id"], name: "index_posts_on_event_id", using: :btree
    add_index "posts", ["place_id"], name: "index_posts_on_place_id", using: :btree
    add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree
    add_index "posts", ["entity_id", "entity_type"], name: "index_posts_on_entity_id_and_entity_type", using: :btree
    add_index "posts", ["target_id", "target_type"], name: "index_posts_on_target_id_and_target_type", using: :btree

    create_table "schedule_items", force: true do |t|
      t.integer "schedule_module_id"
      t.integer "section_id",  null: false
      t.string  "class_type"
      t.string  "place_name"
      t.string  "campus_name"
    end

    add_index "schedule_items", ["schedule_module_id"], name: "index_schedule_items_on_schedule_module_id", using: :btree
    add_index "schedule_items", ["section_id"], name: "index_schedule_items_on_section_id", using: :btree

    create_table "schedule_modules", force: true do |t|
      t.integer "organization_id",  null: false
      t.string  "initials",         null: false
      t.integer "day",              null: false
      t.integer "block",            null: false
      t.string  "start_time",       null: false
      t.string  "end_time",         null: false
    end

    add_index "schedule_modules", ["initials", "organization_id"], name: "index_schedule_modules_on_initials_and_organization_id", unique: true, using: :btree

    create_table "sections", force: true do |t|
      t.integer  "course_id",  null: false
      t.integer  "number",     null: false
      t.integer  "semester",   null: false
      t.integer  "year",       null: false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "sections", ["course_id"], name: "index_sections_on_course_id", using: :btree

    create_table "sections_teachers", id: false, force: true do |t|
      t.integer  "teacher_id", null: false
      t.integer  "section_id", null: false
    end

    add_index "sections_teachers", ["teacher_id"], name: "index_sections_teachers_on_teacher_id", using: :btree
    add_index "sections_teachers", ["section_id"], name: "index_sections_teachers_on_section_id", using: :btree
    add_index "sections_teachers", ["teacher_id", "section_id"], name: "index_sections_teachers_on_teacher_id_and_section_id", unique:true, using: :btree

    create_table "sections_users", id: false, force: true do |t|
      t.integer  "user_id",    null: false
      t.integer  "section_id", null: false
    end

    add_index "sections_users", ["user_id"], name: "index_sections_users_on_teacher_id", using: :btree
    add_index "sections_users", ["section_id"], name: "index_sections_users_on_section_id", using: :btree
    add_index "sections_users", ["user_id", "section_id"], name: "index_sections_users_on_user_id_and_section_id", unique:true, using: :btree

    create_table "teachers", force: true do |t|
      t.string   "name"
      t.string   "slug",              null: false
      t.string   "email"
      t.string   "url"
      t.integer  "academic_unity_id"
      t.text     "information"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "teachers", ["academic_unity_id"], name: "index_teachers_on_academic_unity_id", using: :btree
    add_index "teachers", ["slug"], name: "index_teachers_on_slug", unique: true, using: :btree

    create_table "academic_unities_teachers", id: false, force: true do |t|
      t.integer  "teacher_id",    null: false
      t.integer  "academic_unity_id", null: false
    end

    add_index "academic_unities_teachers", ["teacher_id"], name: "index_academic_unities_teachers_on_teacher_id", using: :btree
    add_index "academic_unities_teachers", ["academic_unity_id"], name: "index_academic_unities_teachers_on_academic_unity_id", using: :btree
    add_index "academic_unities_teachers", ["teacher_id", "academic_unity_id"], name: "index_academic_teachers_on_teacher_id_and_academic_unity_id", unique:true, using: :btree

    create_table "users", force: true do |t| #TODO Devise
      t.string   "name"
      t.string   "username",                               null: false
      t.string   "email",                  default: "",    null: false
      t.string   "slug"
      t.string   "student_id"
      t.integer  "organization_id",                        null: false
      t.boolean  "admin",                  default: false
      t.boolean  "male",                   default: true
      t.string   "country"
      # t.string   "subdomain",              default: "",    null: false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    # add_index "users", ["email", "subdomain"], name: "index_users_on_email_and_subdomain", unique: true, using: :btree
    add_index "users", ["organization_id"], name: "index_users_on_organization_id", using: :btree
    add_index "users", ["slug", "organization_id"], name: "index_users_on_slug_and_organization_id", unique: true, using: :btree

  end
end
