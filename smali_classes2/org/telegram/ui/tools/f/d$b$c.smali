.class Lorg/telegram/ui/tools/f/d$b$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/f/d$b;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/f/d$b;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/f/d$b$c;->a:Lorg/telegram/ui/tools/f/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "SpecialNotifications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "color_sc"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d$b$c;->a:Lorg/telegram/ui/tools/f/d$b;

    iget-object v0, v0, Lorg/telegram/ui/tools/f/d$b;->a:Lorg/telegram/ui/tools/f/d;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/d;->a(Lorg/telegram/ui/tools/f/d;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    return-void
.end method
