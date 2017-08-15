.class Lorg/telegram/ui/tools/f/d$b$a;
.super Ljava/lang/Object;
.source "SpecialNotificationsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/f/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/f/d$b;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/f/d$b;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/f/d$b$a;->a:Lorg/telegram/ui/tools/f/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "SpecialNotifications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p2, :cond_2

    const-string/jumbo v1, "vibrate_sc"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d$b$a;->a:Lorg/telegram/ui/tools/f/d$b;

    iget-object v0, v0, Lorg/telegram/ui/tools/f/d$b;->a:Lorg/telegram/ui/tools/f/d;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/d;->a(Lorg/telegram/ui/tools/f/d;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d$b$a;->a:Lorg/telegram/ui/tools/f/d$b;

    iget-object v0, v0, Lorg/telegram/ui/tools/f/d$b;->a:Lorg/telegram/ui/tools/f/d;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/d;->a(Lorg/telegram/ui/tools/f/d;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    :cond_1
    return-void

    :cond_2
    if-ne p2, v3, :cond_3

    const-string/jumbo v1, "vibrate_sc"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    if-ne p2, v4, :cond_4

    const-string/jumbo v1, "vibrate_sc"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    if-ne p2, v5, :cond_5

    const-string/jumbo v1, "vibrate_sc"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_5
    if-ne p2, v6, :cond_0

    const-string/jumbo v1, "vibrate_sc"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
