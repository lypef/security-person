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

ActiveRecord::Schema.define(version: 20150401035411) do

  create_table "clientes", force: :cascade do |t|
    t.string   "id_movil"
    t.string   "password"
    t.string   "name"
    t.string   "apellidos"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "direccion"
    t.boolean  "status"
  end

  create_table "messages", force: :cascade do |t|
    t.text     "mensaje"
    t.date     "date"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "asunto"
    t.integer  "user_id"
  end

  add_index "messages", ["user_id"], name: "index_messages_on_user_id"

  create_table "peticiones", force: :cascade do |t|
    t.string   "peticiones"
    t.text     "descripcion_peticion"
    t.datetime "date_peticion"
    t.boolean  "status_peticion"
    t.datetime "date_respuesta"
    t.text     "descripcion_respuesta"
    t.boolean  "status_respuesta"
    t.string   "latitud"
    t.string   "longitud"
    t.integer  "cliente_id"
    t.integer  "user_id"
  end

  add_index "peticiones", ["cliente_id"], name: "index_peticiones_on_cliente_id"
  add_index "peticiones", ["user_id"], name: "index_peticiones_on_user_id"

  create_table "solicitudes", force: :cascade do |t|
    t.integer  "id_cliente"
    t.string   "tipo_peticion"
    t.text     "descripcion_peticion"
    t.string   "coordenada_peticion"
    t.datetime "date_peticion"
    t.boolean  "status_peticion"
    t.integer  "id_usuario"
    t.datetime "date_respuesta"
    t.text     "descripcion_respuesta"
    t.boolean  "status_respuesta"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "apellidos"
    t.string   "direccion"
    t.string   "telefono"
    t.boolean  "status"
    t.string   "level"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
