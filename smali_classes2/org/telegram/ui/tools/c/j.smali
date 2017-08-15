.class public Lorg/telegram/ui/tools/c/j;
.super Ljava/lang/Object;
.source "UpdateSetting.java"


# static fields
.field static a:Landroid/content/SharedPreferences;

.field static b:Landroid/content/SharedPreferences$Editor;

.field static c:Landroid/content/Context;

.field static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lorg/telegram/ui/tools/c/j;->d:I

    return-void
.end method

.method public static a(I)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/j;->g()V

    sget-object v0, Lorg/telegram/ui/tools/c/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "NewVersion"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/j;->g()V

    sget-object v0, Lorg/telegram/ui/tools/c/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "DownloadComplet"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/j;->g()V

    sget-object v0, Lorg/telegram/ui/tools/c/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "UpdatePath"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a()Z
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/j;->g()V

    sget-object v0, Lorg/telegram/ui/tools/c/j;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "DownloadComplet"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/j;->g()V

    sget-object v0, Lorg/telegram/ui/tools/c/j;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "UpdatePath"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/j;->g()V

    sget-object v0, Lorg/telegram/ui/tools/c/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "UpdateLink"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/j;->g()V

    sget-object v0, Lorg/telegram/ui/tools/c/j;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "UpdateLink"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/j;->g()V

    sget-object v0, Lorg/telegram/ui/tools/c/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "UpdateTitle"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/j;->g()V

    sget-object v0, Lorg/telegram/ui/tools/c/j;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "UpdateTitle"

    const-string/jumbo v2, "\u0622\u0628\u062f\u06cc\u062a \u062c\u062f\u06cc\u062f \u0631\u0633\u06cc\u062f !!!"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/j;->g()V

    sget-object v0, Lorg/telegram/ui/tools/c/j;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "UpdateMessage"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/ui/tools/c/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/j;->g()V

    sget-object v0, Lorg/telegram/ui/tools/c/j;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "UpdateMessage"

    const-string/jumbo v2, "\u0646\u0633\u062e\u0647 \u06cc \u062c\u062f\u06cc\u062f \u0628\u0627 \u0627\u0645\u06a9\u0627\u0646\u0627\u062a \u0632\u06cc\u0631 : \n\u0645\u0646\u0634\u06cc\n\u062a\u063a\u06cc\u06cc\u0631 \u0635\u062f\u0627"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()I
    .locals 3

    invoke-static {}, Lorg/telegram/ui/tools/c/j;->g()V

    sget-object v0, Lorg/telegram/ui/tools/c/j;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "NewVersion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static g()V
    .locals 3

    sget-object v0, Lorg/telegram/ui/tools/c/j;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sput-object v0, Lorg/telegram/ui/tools/c/j;->c:Landroid/content/Context;

    sget-object v0, Lorg/telegram/ui/tools/c/j;->c:Landroid/content/Context;

    const-string/jumbo v1, "UpdateStore"

    sget v2, Lorg/telegram/ui/tools/c/j;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/tools/c/j;->a:Landroid/content/SharedPreferences;

    sget-object v0, Lorg/telegram/ui/tools/c/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/tools/c/j;->b:Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method
