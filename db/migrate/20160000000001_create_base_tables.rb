class CreateBaseTables < ActiveRecord::Migration
  def self.up
    # ユーザ
    create_table :users do |t|
      t.string :email,            null: false
      t.string :password_digest,  null: false

      t.timestamps null: false
    end

    # 注文
    create_table :buys do |t|

      t.timestamps null: false
    end

    # ラッピング
    create_table :wrappings do |t|
      t.integer :name, null: false

      t.timestamps null: false
    end

    # 商品
    create_table :products do |t|
      t.string    :name,    null: false
      t.integer   :price,   null: false
      t.float     :weight,  null: false
      t.timestamps null: false
    end

    # カテゴリ
    create_table :categories do |t|
      t.string :name, null: false

      t.timestamps null: false
    end

    # 商品カテゴリ
    create_table :product_categories do |t|
      t.integer :product_id,  null: false, index: true
      t.integer :category_id, null: false, index: true

      t.timestamps null: false
    end

    # 箱
    create_table :physical_boxes do |t|
      t.float   :capacity,  null: false
      t.string  :type,      null: false
      t.integer :price,     null: false

      t.timestamps null: false
    end

    # ギフトボックス
    create_table :boxes do |t|
      t.integer :user_id,         null: false
      t.integer :physical_box_id, null: false

      t.timestamps null: false
    end

    # 箱明細
    create_table :box_details do |t|
      t.integer :box_id,      null: false, index: true
      t.integer :product_id,  null: false, index: true

      t.timestamps null: false
    end

    # 届け先
    create_table :addresses do |t|
      t.integer :buy_id, null: false

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :users
    drop_table :buys
    drop_table :wrappings
    drop_table :products
    drop_table :categories
    drop_table :product_categories
    drop_table :physical_boxes
    drop_table :boxes
    drop_table :box_details
    drop_table :addresses
  end
end
