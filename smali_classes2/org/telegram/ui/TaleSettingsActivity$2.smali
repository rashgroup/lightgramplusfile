.class Lorg/telegram/ui/TaleSettingsActivity$2;
.super Ljava/lang/Object;
.source "TaleSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TaleSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TaleSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TaleSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->VoiceDoneRow:I
    invoke-static {v1}, Lorg/telegram/ui/TaleSettingsActivity;->access$000(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_1

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "hoshyar_sh"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->VoiceDoneRow:I
    invoke-static {v3}, Lorg/telegram/ui/TaleSettingsActivity;->access$000(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v3

    if-ne p3, v3, :cond_0

    const-string/jumbo v0, "VoiceDoneRow"

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "VoiceDoneRow"

    if-nez v1, :cond_17

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->PaintingRow:I
    invoke-static {v1}, Lorg/telegram/ui/TaleSettingsActivity;->access$100(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_3

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "hoshyar_sh"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->PaintingRow:I
    invoke-static {v3}, Lorg/telegram/ui/TaleSettingsActivity;->access$100(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v3

    if-ne p3, v3, :cond_2

    const-string/jumbo v0, "PaintingRow"

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "PaintingRow"

    if-nez v1, :cond_18

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->StickerDoneRow:I
    invoke-static {v1}, Lorg/telegram/ui/TaleSettingsActivity;->access$200(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_5

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "hoshyar_sh"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->StickerDoneRow:I
    invoke-static {v3}, Lorg/telegram/ui/TaleSettingsActivity;->access$200(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v3

    if-ne p3, v3, :cond_4

    const-string/jumbo v0, "StickerDoneRow"

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "StickerDoneRow"

    if-nez v1, :cond_19

    const/4 v0, 0x1

    :goto_2
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->ShamsiRow:I
    invoke-static {v1}, Lorg/telegram/ui/TaleSettingsActivity;->access$300(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_7

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "hoshyar_sh"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->ShamsiRow:I
    invoke-static {v3}, Lorg/telegram/ui/TaleSettingsActivity;->access$300(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v3

    if-ne p3, v3, :cond_6

    const-string/jumbo v0, "ShamsiRow"

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "ShamsiRow"

    if-nez v1, :cond_1a

    const/4 v0, 0x1

    :goto_3
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    :cond_6
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->HidenTypeRow:I
    invoke-static {v1}, Lorg/telegram/ui/TaleSettingsActivity;->access$400(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_9

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "hoshyar_sh"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->HidenTypeRow:I
    invoke-static {v3}, Lorg/telegram/ui/TaleSettingsActivity;->access$400(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v3

    if-ne p3, v3, :cond_8

    const-string/jumbo v0, "HidenTypeRow"

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "HidenTypeRow"

    if-nez v1, :cond_1b

    const/4 v0, 0x1

    :goto_4
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    :cond_8
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->channelConutTypeRow:I
    invoke-static {v1}, Lorg/telegram/ui/TaleSettingsActivity;->access$500(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_b

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "hoshyar_sh"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->channelConutTypeRow:I
    invoke-static {v3}, Lorg/telegram/ui/TaleSettingsActivity;->access$500(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v3

    if-ne p3, v3, :cond_a

    const-string/jumbo v0, "channelConutTypeRow"

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "channelConutTypeRow"

    if-nez v1, :cond_1c

    const/4 v0, 0x1

    :goto_5
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    :cond_a
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->HiddeMenuRow:I
    invoke-static {v1}, Lorg/telegram/ui/TaleSettingsActivity;->access$600(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_d

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "hoshyar_sh"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->HiddeMenuRow:I
    invoke-static {v3}, Lorg/telegram/ui/TaleSettingsActivity;->access$600(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v3

    if-ne p3, v3, :cond_c

    const-string/jumbo v0, "HiddeMenuRow"

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "HiddeMenuRow"

    if-nez v1, :cond_1d

    const/4 v0, 0x1

    :goto_6
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    :cond_c
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->restartApp()V

    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->rtlConutTypeRow:I
    invoke-static {v1}, Lorg/telegram/ui/TaleSettingsActivity;->access$700(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_1f

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "hoshyar_sh"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->rtlConutTypeRow:I
    invoke-static {v3}, Lorg/telegram/ui/TaleSettingsActivity;->access$700(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v3

    if-ne p3, v3, :cond_e

    const-string/jumbo v0, "rtlConutTypeRow"

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "rtlConutTypeRow"

    if-nez v1, :cond_1e

    const/4 v0, 0x1

    :goto_7
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    :cond_e
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->restartApp()V

    move v4, v0

    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->setFontSelect:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1100(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    new-instance v1, Lorg/telegram/ui/FontSelector;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/FontSelector;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/TaleSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->setNewPasswordRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1200(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_10

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    new-instance v1, Lorg/telegram/ui/SetNewPass;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/SetNewPass;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/TaleSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_10
    :goto_9
    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->listSecurityRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1300(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_11

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    new-instance v1, Lorg/telegram/ui/SetNewPass;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/SetNewPass;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/TaleSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_11
    :goto_a
    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->ActiveAnswer:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1400(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_13

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "hoshyar_sh"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->ActiveAnswer:I
    invoke-static {v2}, Lorg/telegram/ui/TaleSettingsActivity;->access$1400(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v2

    if-ne p3, v2, :cond_12

    const-string/jumbo v2, "txtanswering"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v2, "txtanswering"

    if-nez v4, :cond_26

    const/4 v0, 0x1

    :goto_b
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_12
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->hidenNumberRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1500(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_15

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "hoshyar_sh"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->hidenNumberRow:I
    invoke-static {v2}, Lorg/telegram/ui/TaleSettingsActivity;->access$1500(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v2

    if-ne p3, v2, :cond_14

    const-string/jumbo v2, "hidenNumberRow"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v2, "hidenNumberRow"

    if-nez v4, :cond_27

    const/4 v0, 0x1

    :goto_c
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_14
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->restartApp()V

    :cond_15
    instance-of v0, p2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_16

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-nez v4, :cond_28

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_16
    return-void

    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_19
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_1f
    iget-object v1, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->groupPopupNotificationRow:I
    invoke-static {v1}, Lorg/telegram/ui/TaleSettingsActivity;->access$800(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_21

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_20

    iget-object v1, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/TaleSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0808cb

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_e
    move v4, v0

    goto/16 :goto_8

    :cond_20
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/TaleSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "PopupNotification1"

    const v3, 0x7f080777

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string/jumbo v4, "voicechanger1"

    const v5, 0x7f0808d1

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "voicechanger2"

    const v5, 0x7f0808d2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "voicechanger3"

    const v5, 0x7f0808d3

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "voicechanger4"

    const v5, 0x7f0808d4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "voicechanger5"

    const v5, 0x7f0808d5

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "voicechanger6"

    const v5, 0x7f0808d6

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lorg/telegram/ui/TaleSettingsActivity$2$1;

    invoke-direct {v3, p0, p3}, Lorg/telegram/ui/TaleSettingsActivity$2$1;-><init>(Lorg/telegram/ui/TaleSettingsActivity$2;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0800f2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/TaleSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_e

    :cond_21
    iget-object v1, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->HiddenKeyRow:I
    invoke-static {v1}, Lorg/telegram/ui/TaleSettingsActivity;->access$1000(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_23

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_22

    iget-object v1, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/TaleSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0808cb

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v4, v0

    goto/16 :goto_8

    :cond_22
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/TaleSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "KeyShowHidden"

    const v3, 0x7f080713

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string/jumbo v4, "GhostIcon"

    const v5, 0x7f0806e7

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "eyeIcon"

    const v5, 0x7f080869

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "NewChatIcon"

    const v5, 0x7f080748

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lorg/telegram/ui/TaleSettingsActivity$2$2;

    invoke-direct {v3, p0, p3}, Lorg/telegram/ui/TaleSettingsActivity$2$2;-><init>(Lorg/telegram/ui/TaleSettingsActivity$2;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0800f2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/TaleSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_23
    move v4, v0

    goto/16 :goto_8

    :cond_24
    new-instance v5, Landroid/app/Dialog;

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/TaleSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const v0, 0x7f040033

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/TaleSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/byekan.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    const v0, 0x7f1000cf

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f1000ca

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1000ce

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1000cc

    invoke-virtual {v5, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const-string/jumbo v7, "actionBarDefault"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f1000cd

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v2, Lorg/telegram/ui/TaleSettingsActivity$2$3;

    invoke-direct {v2, p0, v0, v5}, Lorg/telegram/ui/TaleSettingsActivity$2$3;-><init>(Lorg/telegram/ui/TaleSettingsActivity$2;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto/16 :goto_9

    :cond_25
    new-instance v5, Landroid/app/Dialog;

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/TaleSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const v0, 0x7f040033

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$2;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/TaleSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/byekan.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    const v0, 0x7f1000cf

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f1000ca

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1000ce

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1000cc

    invoke-virtual {v5, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const-string/jumbo v7, "actionBarDefault"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f1000cd

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v2, Lorg/telegram/ui/TaleSettingsActivity$2$4;

    invoke-direct {v2, p0, v0, v5}, Lorg/telegram/ui/TaleSettingsActivity$2$4;-><init>(Lorg/telegram/ui/TaleSettingsActivity$2;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto/16 :goto_a

    :cond_26
    const/4 v0, 0x0

    goto/16 :goto_b

    :cond_27
    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_28
    const/4 v0, 0x0

    goto/16 :goto_d
.end method
