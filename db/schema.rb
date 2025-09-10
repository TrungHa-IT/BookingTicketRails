# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_09_10_085046) do
  create_table "BookingSeats", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "bookingId"
    t.integer "seatId"
    t.integer "showTimeId"
    t.time "holdStill"
    t.index ["bookingId"], name: "bookingId"
    t.index ["seatId"], name: "seatId"
    t.index ["showTimeId"], name: "showTimeId"
  end

  create_table "Bookings", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "userId"
    t.integer "showId"
    t.datetime "bookingTime", precision: nil, null: false
    t.float "totalAmount", limit: 53, null: false
    t.index ["showId"], name: "showId"
    t.index ["userId"], name: "userId"
  end

  create_table "Cinemas", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", limit: 100, null: false, collation: "utf8mb3_general_ci"
    t.string "address", limit: 100, null: false, collation: "utf8mb3_general_ci"
    t.string "imageMap", limit: 500, collation: "utf8mb3_general_ci"
  end

  create_table "Genres", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "genresName", limit: 100, null: false, collation: "utf8mb3_general_ci"
    t.string "genresDescription", limit: 1000, collation: "utf8mb3_general_ci"
  end

  create_table "MovieTypes", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "movieId"
    t.integer "genredId"
    t.index ["genredId"], name: "genredId"
    t.index ["movieId"], name: "movieId"
  end

  create_table "Movies", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "title", limit: 500, null: false, collation: "utf8mb3_general_ci"
    t.text "movieDescription"
    t.string "directors", limit: 500, null: false, collation: "utf8mb3_general_ci"
    t.string "actors", limit: 1000, null: false, collation: "utf8mb3_general_ci"
    t.string "trailerURL", limit: 1000, null: false, collation: "utf8mb3_general_ci"
    t.integer "durationMinutes", null: false
    t.string "status", limit: 100, null: false, collation: "utf8mb3_general_ci"
    t.string "language", limit: 100, null: false, collation: "utf8mb3_general_ci"
    t.integer "limitAge", null: false
    t.datetime "screeningDay", precision: nil, null: false
    t.string "poster", limit: 1000, null: false, collation: "utf8mb3_general_ci"
    t.datetime "createAt", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updateAt", precision: nil, default: -> { "CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP" }
  end

  create_table "Payments", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "bookingId"
    t.string "paymentMethod", limit: 100, collation: "utf8mb3_general_ci"
    t.datetime "paymentDate", precision: nil, null: false
    t.string "status", limit: 100, null: false, collation: "utf8mb3_general_ci"
    t.index ["bookingId"], name: "bookingId"
  end

  create_table "Rooms", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", limit: 100, null: false, collation: "utf8mb3_general_ci"
    t.integer "seatCapacity", null: false
    t.integer "cinemaId"
    t.index ["cinemaId"], name: "cinemaId"
  end

  create_table "Seats", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "roomId"
    t.integer "seatNumber", null: false
    t.string "status", limit: 100, collation: "utf8mb3_general_ci"
    t.index ["roomId"], name: "roomId"
  end

  create_table "ShowTimeDetails", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "showId"
    t.time "startTime", null: false
    t.time "endTime", null: false
    t.index ["showId"], name: "showId"
  end

  create_table "Shows", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "movieId"
    t.integer "roomId"
    t.integer "cinemaId"
    t.float "ticketPrice", limit: 53, null: false
    t.date "showDay", null: false
    t.index ["cinemaId"], name: "cinemaId"
    t.index ["movieId"], name: "movieId"
    t.index ["roomId"], name: "roomId"
  end

  create_table "Users", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "fullname", limit: 100, null: false, collation: "utf8mb3_general_ci"
    t.string "email", limit: 100, null: false
    t.string "phone", limit: 15, null: false
    t.string "password_hash", limit: 100, null: false, collation: "utf8mb3_general_ci"
    t.integer "role", null: false
    t.datetime "create_at", precision: nil, null: false
  end

  create_table "active_storage_attachments", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  add_foreign_key "BookingSeats", "Bookings", column: "bookingId", name: "BookingSeats_ibfk_1"
  add_foreign_key "BookingSeats", "Seats", column: "seatId", name: "BookingSeats_ibfk_2"
  add_foreign_key "BookingSeats", "ShowTimeDetails", column: "showTimeId", name: "BookingSeats_ibfk_3"
  add_foreign_key "Bookings", "Shows", column: "showId", name: "Bookings_ibfk_2"
  add_foreign_key "Bookings", "Users", column: "userId", name: "Bookings_ibfk_1"
  add_foreign_key "MovieTypes", "Genres", column: "genredId", name: "MovieTypes_ibfk_2"
  add_foreign_key "MovieTypes", "Movies", column: "movieId", name: "MovieTypes_ibfk_1"
  add_foreign_key "Payments", "Bookings", column: "bookingId", name: "Payments_ibfk_1"
  add_foreign_key "Rooms", "Cinemas", column: "cinemaId", name: "Rooms_ibfk_1"
  add_foreign_key "Seats", "Rooms", column: "roomId", name: "Seats_ibfk_1"
  add_foreign_key "ShowTimeDetails", "Shows", column: "showId", name: "ShowTimeDetails_ibfk_1"
  add_foreign_key "Shows", "Cinemas", column: "cinemaId", name: "Shows_ibfk_3"
  add_foreign_key "Shows", "Movies", column: "movieId", name: "Shows_ibfk_1"
  add_foreign_key "Shows", "Rooms", column: "roomId", name: "Shows_ibfk_2"
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
