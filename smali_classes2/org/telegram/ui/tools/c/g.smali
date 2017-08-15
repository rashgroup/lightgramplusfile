.class public Lorg/telegram/ui/tools/c/g;
.super Ljava/lang/Object;
.source "Setting.java"


# static fields
.field static a:Landroid/content/SharedPreferences;

.field static b:Landroid/content/SharedPreferences$Editor;

.field static c:Landroid/content/Context;

.field static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lorg/telegram/ui/tools/c/g;->d:I

    return-void
.end method

.method public static A()I
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "UserChange"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static B()V
    .locals 3

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sput-object v0, Lorg/telegram/ui/tools/c/g;->c:Landroid/content/Context;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->c:Landroid/content/Context;

    const-string/jumbo v1, "Stors"

    sget v2, Lorg/telegram/ui/tools/c/g;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public static a(F)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "IntChannel"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(I)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "nicewrite"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "ghostmode"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "Mutehx"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Z)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "nicewrNazar"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a()Z
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "AddToFav"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "Mutehx"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "BIntChannelID"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static b(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "AddToFav"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "ReadList"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "ReadList"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "IntChannelLeft"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static c(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "Frw"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "Poushx"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static d(I)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "NewChannel"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static d(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "setbooleanch"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "answeringmachineanswer"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static d()Z
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "notifi"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e(I)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "UserChange"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static e(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "isfirsttime"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "favors"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static e()Z
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "Frw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "Poushx"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "SecurityListMain"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "HiddenListMain"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static g()Z
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "ghostmode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static h()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "answeringmachineanswer"

    const-string/jumbo v2, "AnsweringmachineDefaulttext"

    const v3, 0x7f080641

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "pass"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static i()I
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "themeid"

    const/16 v2, 0x13

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "font_select_dialogCell"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static j()I
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "nicewrite"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static j(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "setcountlogin"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static k()Ljava/lang/Boolean;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "nicewrNazar"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static k(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "setspacecharachter"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static l()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "favors"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "SecurityListMain"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "HiddenListMain"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "font_select_dialogCell"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "niceColor"

    const-string/jumbo v2, "#ff0051"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "setcountlogin"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static r()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "setspacecharachter"

    const-string/jumbo v2, "\u2764"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s()Ljava/lang/Boolean;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "setbooleanch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static t()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pass"

    const-string/jumbo v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static u()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "security"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static v()Z
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "showtimeago"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static w()Z
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "isfirsttime"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static x()F
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "IntChannel"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static y()I
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "BIntChannelID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static z()I
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->B()V

    sget-object v0, Lorg/telegram/ui/tools/c/g;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "NewChannel"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
