.class public Lorg/telegram/ui/tools/g/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "C1415b.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "tbl_update.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_update ( _id integer primary key autoincrement, type integer,old_value text,new_value text,user_id integer,is_new integer,change_date integer default (strftime(\'%s\',\'now\') * 1000))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_setting ( _id integer primary key autoincrement, key text, value text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "INSERT INTO tbl_setting VALUES (1,\'notifyChanges\',\'true\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "INSERT INTO tbl_setting VALUES (2,\'notifyNameChanges\',\'true\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "INSERT INTO tbl_setting VALUES (3,\'notifyStatusChanges\',\'true\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "INSERT INTO tbl_setting VALUES (4,\'notifyPhotoChanges\',\'true\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "INSERT INTO tbl_setting VALUES (5,\'notifyPhoneChanges\',\'true\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_alarm ( _id integer primary key autoincrement, title text,message text,imageUrl text,positiveBtnText text,positiveBtnAction text,positiveBtnUrl text,negativeBtnText text,negativeBtnAction text,negativeBtnUrl text,showCount integer,exitOnDismiss integer,targetNetwork integer,displayCount integer,targetVersion integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_favorite ( _id integer primary key autoincrement, chatID integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_hidden ( _id integer primary key autoincrement, dialogID integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_category ( _id integer primary key autoincrement, name text,priority integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private g(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_cat_dlg_info ( _id integer primary key autoincrement, dialogId integer,categoryId integer, foreign key( categoryId ) references tbl_category ( _id ) ON DELETE CASCADE )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private h(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "CREATE TRIGGER trg_category_priority_from_id AFTER INSERT ON tbl_category FOR EACH ROW  WHEN NEW.priority IS NULL  BEGIN  UPDATE tbl_category SET priority= NEW._id WHERE rowid = NEW.rowid;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private i(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_favorite_stickers ( _id integer primary key autoincrement, doc_id integer,priority integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private j(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "CREATE TRIGGER trg_fav_stickers_priority_from_id AFTER INSERT ON tbl_favorite_stickers FOR EACH ROW  WHEN NEW.priority IS NULL  BEGIN  UPDATE tbl_favorite_stickers SET priority= NEW._id WHERE rowid = NEW.rowid;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    :cond_0
    if-nez p1, :cond_1

    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_2
    const-string/jumbo v2, "SELECT COUNT(*) FROM sqlite_master WHERE type = ? AND name = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "table"

    aput-object v4, v3, v1

    aput-object p2, v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_3
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    if-lez v3, :cond_4

    :goto_0
    return v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->j(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7

    const v1, 0x11914

    const v2, 0x11909

    const v3, 0x10bb1

    const v4, 0xff8d

    const/4 v6, 0x0

    add-int/lit8 v0, p2, 0x1

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const v5, 0xff8c

    if-gt v0, v5, :cond_1

    move v0, v4

    :cond_1
    if-ne v0, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    const v4, 0xff8e

    if-ne v0, v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    const v4, 0xff8f

    if-ne v0, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    const v4, 0xff90

    if-ne v0, v4, :cond_5

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v4, "drop table tbl_alarm"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_5
    const v4, 0x10bb0

    if-gt v0, v4, :cond_6

    move v0, v3

    :cond_6
    if-ne v0, v3, :cond_7

    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "default_tab"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "default_tab"

    const/4 v5, 0x7

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    const v3, 0x11908

    if-gt v0, v3, :cond_8

    move v0, v2

    :cond_8
    if-ne v0, v2, :cond_9

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_9
    const v2, 0x11913

    if-gt v0, v2, :cond_a

    move v0, v1

    :cond_a
    if-ne v0, v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_b
    const v1, 0x11915

    if-ne v0, v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->j(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_c
    const v1, 0x1191b

    if-gt v0, v1, :cond_d

    const v0, 0x1191c

    :cond_d
    const v1, 0x1191c

    if-ne v0, v1, :cond_f

    const-string/jumbo v0, "tbl_category"

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/tools/g/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_e
    const-string/jumbo v0, "tbl_favorite_stickers"

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/tools/g/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/g/b;->j(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_f
    return-void
.end method
