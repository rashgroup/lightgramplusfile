.class Lorg/telegram/ui/NotificationsSettingsActivity$3$6;
.super Ljava/lang/Object;
.source "NotificationsSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NotificationsSettingsActivity$3;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/NotificationsSettingsActivity$3;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/NotificationsSettingsActivity$3;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3$6;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$3;

    iput p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    :goto_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "repeat_messages"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3$6;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->adapter:Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$900(Lorg/telegram/ui/NotificationsSettingsActivity;)Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3$6;->val$position:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->notifyItemChanged(I)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    const/16 v0, 0x1e

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne p2, v2, :cond_3

    const/16 v0, 0x3c

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_4

    const/16 v0, 0x78

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    if-ne p2, v0, :cond_5

    const/16 v0, 0xf0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method
