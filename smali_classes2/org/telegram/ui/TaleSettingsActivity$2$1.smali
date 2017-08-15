.class Lorg/telegram/ui/TaleSettingsActivity$2$1;
.super Ljava/lang/Object;
.source "TaleSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TaleSettingsActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TaleSettingsActivity$2;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/TaleSettingsActivity$2;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TaleSettingsActivity$2$1;->this$1:Lorg/telegram/ui/TaleSettingsActivity$2;

    iput p2, p0, Lorg/telegram/ui/TaleSettingsActivity$2$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "hoshyar_sh"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/TaleSettingsActivity$2$1;->val$i:I

    iget-object v2, p0, Lorg/telegram/ui/TaleSettingsActivity$2$1;->this$1:Lorg/telegram/ui/TaleSettingsActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->groupPopupNotificationRow:I
    invoke-static {v2}, Lorg/telegram/ui/TaleSettingsActivity;->access$800(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "voicechanger"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$2$1;->this$1:Lorg/telegram/ui/TaleSettingsActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$900(Lorg/telegram/ui/TaleSettingsActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$2$1;->this$1:Lorg/telegram/ui/TaleSettingsActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$900(Lorg/telegram/ui/TaleSettingsActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    :cond_1
    return-void
.end method
