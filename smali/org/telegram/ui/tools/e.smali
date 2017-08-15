.class public Lorg/telegram/ui/tools/e;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HonariDBHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/telegram/ui/tools/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/telegram/ui/tools/g;->a(Landroid/content/Context;)I

    move-result v2

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

    const-string/jumbo v0, "create table tbl_specific_contact ( _id integer primary key autoincrement, user_id integer,change_type integer,change_date integer default (strftime(\'%s\',\'now\') * 1000))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_specific_contact_log ( _id integer primary key autoincrement, type integer,old_value text,new_value text,user_id integer,is_new integer,change_date integer default (strftime(\'%s\',\'now\') * 1000))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_dialog_dm ( _id integer primary key autoincrement, dialog_id integer,doc_type integer,message_count integer,priority integer,change_date integer default (strftime(\'%s\',\'now\') * 1000))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_dialog_settings ( _id integer primary key autoincrement, dialog_id integer,auto_dl_mask integer,background integer,hide_typing_state integer,not_send_read_state integer,send_read_on_send_message integer,marker integer,change_date integer default (strftime(\'%s\',\'now\') * 1000))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private f(Landroid/database/sqlite/SQLiteDatabase;)V
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

.method private g(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_alarm ( _id integer primary key autoincrement, title text,message text,imageUrl text,positiveBtnText text,positiveBtnAction text,positiveBtnUrl text,negativeBtnText text,negativeBtnAction text,negativeBtnUrl text,showCount integer,exitOnDismiss integer,targetNetwork integer,displayCount integer,targetVersion integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private h(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_favorite ( _id integer primary key autoincrement, chatID integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private i(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_hidden ( _id integer primary key autoincrement, dialogID integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private j(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_category ( _id integer primary key autoincrement, name text,priority integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private k(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_cat_dlg_info ( _id integer primary key autoincrement, dialogId integer,categoryId integer, foreign key( categoryId ) references tbl_category ( _id ) ON DELETE CASCADE )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private l(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "CREATE TRIGGER trg_category_priority_from_id AFTER INSERT ON tbl_category FOR EACH ROW  WHEN NEW.priority IS NULL  BEGIN  UPDATE tbl_category SET priority= NEW._id WHERE rowid = NEW.rowid;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private m(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_favorite_stickers ( _id integer primary key autoincrement, doc_id integer,emoji text,priority integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private n(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "CREATE TRIGGER trg_dialogdm_priority_from_id AFTER INSERT ON tbl_dialog_dm FOR EACH ROW  WHEN NEW.priority IS NULL  BEGIN  UPDATE tbl_dialog_dm SET priority= NEW._id WHERE rowid = NEW.rowid;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private o(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "CREATE TRIGGER trg_fav_stickers_priority_from_id AFTER INSERT ON tbl_favorite_stickers FOR EACH ROW  WHEN NEW.priority IS NULL  BEGIN  UPDATE tbl_favorite_stickers SET priority= NEW._id WHERE rowid = NEW.rowid;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private p(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_archive ( _id integer primary key autoincrement, name text,priority integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "INSERT INTO tbl_archive VALUES (-1,\'No Archive\', 99999999)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private q(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_arch_msg_info ( _id integer primary key autoincrement, message_id integer,org_message_id integer, org_dialog_id integer, archive_id integer, change_date integer default (strftime(\'%s\',\'now\') * 1000) )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private r(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "CREATE TRIGGER trg_archive_priority_from_id AFTER INSERT ON tbl_archive FOR EACH ROW  WHEN NEW.priority IS NULL  BEGIN  UPDATE tbl_archive SET priority= NEW._id WHERE rowid = NEW.rowid;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private s(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "CREATE TABLE tbl_ActionList(Name TEXT, JSONData TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE TABLE tbl_display(theme INTEGER, anim INTEGER, size INTEGER, background INTEGER, alpha INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private t(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_channel_archive ( _id integer primary key autoincrement, dialog_id integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private u(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table tbl_blocked_users ( _id integer primary key autoincrement, user_id integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "SELECT COUNT(*) FROM sqlite_master WHERE type = ? AND name = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "table"

    aput-object v4, v3, v0

    aput-object p2, v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    if-lez v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->j(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->k(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->m(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->o(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->n(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->p(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->q(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->r(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->s(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->t(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->u(Landroid/database/sqlite/SQLiteDatabase;)V

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

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->g(Landroid/database/sqlite/SQLiteDatabase;)V

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

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_5
    const v4, 0x10bb0

    if-gt v0, v4, :cond_6

    move v0, v3

    :cond_6
    if-ne v0, v3, :cond_7

    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "moboconfig"

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

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_9
    const v2, 0x11913

    if-gt v0, v2, :cond_a

    move v0, v1

    :cond_a
    if-ne v0, v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->j(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->k(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_b
    const v1, 0x11915

    if-ne v0, v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->m(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->o(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_c
    const v1, 0x1191b

    if-gt v0, v1, :cond_d

    const v0, 0x1191c

    :cond_d
    const v1, 0x1191c

    if-ne v0, v1, :cond_f

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "tbl_category"

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/tools/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->j(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->k(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_e
    const-string/jumbo v1, "tbl_favorite_stickers"

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/tools/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->m(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->o(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_f
    const v1, 0x12bfb

    if-gt v0, v1, :cond_10

    const v0, 0x12bfc

    :cond_10
    const v1, 0x12bfc

    if-ne v0, v1, :cond_11

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_11
    const v1, 0x139cc

    if-gt v0, v1, :cond_12

    const v0, 0x139cd

    :cond_12
    const v1, 0x139cd

    if-ne v0, v1, :cond_13

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->n(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_13
    const v1, 0x139ce

    if-ne v0, v1, :cond_14

    add-int/lit8 v0, v0, 0x1

    :cond_14
    const v1, 0x139cf

    if-ne v0, v1, :cond_15

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_15
    const v1, 0x139d0

    if-ne v0, v1, :cond_16

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "ALTER TABLE tbl_favorite_stickers ADD COLUMN emoji text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_16
    const v1, 0x14105

    if-gt v0, v1, :cond_17

    const v0, 0x14106

    :cond_17
    const v1, 0x14106

    if-ne v0, v1, :cond_18

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->p(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->q(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->r(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_18
    const v1, 0x14ce2

    if-gt v0, v1, :cond_19

    const v0, 0x14ce3

    :cond_19
    const v1, 0x14ce3

    if-ne v0, v1, :cond_1a

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->s(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1a
    const v1, 0x14cfb

    if-gt v0, v1, :cond_1b

    const v0, 0x14cfc

    :cond_1b
    const v1, 0x14cfc

    if-ne v0, v1, :cond_1c

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->t(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1c
    const v1, 0x14cfd

    if-ne v0, v1, :cond_1d

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/e;->u(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1d
    const v1, 0x14cfe

    if-ne v0, v1, :cond_1e

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v0, "ALTER TABLE tbl_dialog_settings ADD COLUMN send_read_on_send_message integer"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1e
    return-void
.end method
