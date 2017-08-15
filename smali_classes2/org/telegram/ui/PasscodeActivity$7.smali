.class Lorg/telegram/ui/PasscodeActivity$7;
.super Ljava/lang/Object;
.source "PasscodeActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PasscodeActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PasscodeActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    new-instance v2, Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/PasscodeActivity;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PasscodeActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passcodeRow:I
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_7

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1000(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1000(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v5, :cond_4

    check-cast v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v3, "windowBackgroundWhiteGrayText7"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    :cond_3
    sget-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    new-instance v2, Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/PasscodeActivity;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PasscodeActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "AutoLock"

    const v4, 0x7f0800bc

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v3, Lorg/telegram/ui/Components/NumberPicker;

    iget-object v4, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    sget v4, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    if-nez v4, :cond_9

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    :cond_8
    :goto_3
    new-instance v1, Lorg/telegram/ui/PasscodeActivity$7$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$7$1;-><init>(Lorg/telegram/ui/PasscodeActivity$7;)V

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/NumberPicker;->setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "Done"

    const v2, 0x7f0801dc

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PasscodeActivity$7$2;

    invoke-direct {v2, p0, v3, p2}, Lorg/telegram/ui/PasscodeActivity$7$2;-><init>(Lorg/telegram/ui/PasscodeActivity$7;Lorg/telegram/ui/Components/NumberPicker;I)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/PasscodeActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_9
    sget v2, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v4, 0x3c

    if-ne v2, v4, :cond_a

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_3

    :cond_a
    sget v1, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_b

    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_3

    :cond_b
    sget v1, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v2, 0xe10

    if-ne v1, v2, :cond_c

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_3

    :cond_c
    sget v1, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v2, 0x4650

    if-ne v1, v2, :cond_8

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1300(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_f

    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    if-nez v0, :cond_e

    :goto_4
    sput-boolean v1, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    :cond_e
    move v1, v2

    goto :goto_4

    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->captureRow:I
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1400(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    if-nez v0, :cond_10

    :goto_5
    sput-boolean v1, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    move v1, v2

    goto :goto_5
.end method
