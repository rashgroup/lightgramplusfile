.class Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "TaleSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/TaleSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/TaleSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/TaleSettingsActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$2500(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->messageSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1600(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->securitySectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1700(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->groupSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1800(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->setNewRowTheme:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1900(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->AnswerMachineRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$2000(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->VoiceDoneRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$000(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->PaintingRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$100(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->StickerDoneRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$200(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->ShamsiRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$300(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->HidenTypeRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$400(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->hidenNumberRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1500(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->ActiveAnswer:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1400(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->channelConutTypeRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$500(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    move v0, v1

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->HiddeMenuRow:I
    invoke-static {v3}, Lorg/telegram/ui/TaleSettingsActivity;->access$600(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v3

    if-ne p1, v3, :cond_3

    move v2, v1

    :cond_3
    or-int/2addr v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->rtlConutTypeRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$700(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->groupPopupNotificationRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$800(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->HiddenKeyRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1000(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->setFontSelect:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1100(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->setNewPasswordRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1200(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->listSecurityRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1300(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    :cond_7
    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->EditBox:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$2600(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    const/4 v1, 0x5

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->HiddenHelpRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$2700(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_a

    const/4 v1, 0x6

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x4

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x3

    const/4 v6, 0x2

    const/4 v9, 0x5

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v4

    if-nez v4, :cond_27

    if-nez p2, :cond_26

    new-instance v1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->messageSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1600(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v2, "MessageNotifications"

    const v5, 0x7f0808a9

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->securitySectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1700(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v2, "securitylist"

    const v5, 0x7f080791

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->groupSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1800(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v2, "voicechanger"

    const v5, 0x7f0808d0

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->HiddenKeyRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1000(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v2, "HiddenKeyRow"

    const v5, 0x7f0808d0

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->setNewRowTheme:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1900(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v2, "alldialogsd"

    const v5, 0x7f080835

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->AnswerMachineRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$2000(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v2, "alldialogsg"

    const v5, 0x7f080836

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    :cond_5
    :goto_1
    if-ne v4, v8, :cond_15

    if-nez v1, :cond_6

    new-instance v1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    :cond_6
    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "hoshyar_sh"

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->VoiceDoneRow:I
    invoke-static {v5}, Lorg/telegram/ui/TaleSettingsActivity;->access$000(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_7

    const-string/jumbo v5, "TaidSticker"

    const v6, 0x7f0807f6

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "VoiceDoneRow"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v5, v6, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->PaintingRow:I
    invoke-static {v5}, Lorg/telegram/ui/TaleSettingsActivity;->access$100(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_8

    const-string/jumbo v5, "PaintingRow"

    const v6, 0x7f08076e

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "PaintingRow"

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v5, v6, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->StickerDoneRow:I
    invoke-static {v5}, Lorg/telegram/ui/TaleSettingsActivity;->access$200(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_9

    const-string/jumbo v5, "StickerDoneRow"

    const v6, 0x7f0807f3

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "StickerDoneRow"

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v5, v6, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->ShamsiRow:I
    invoke-static {v5}, Lorg/telegram/ui/TaleSettingsActivity;->access$300(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_a

    const-string/jumbo v5, "ShamsiRow"

    const v6, 0x7f0807a3

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ShamsiRow"

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v5, v6, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    :cond_a
    iget-object v5, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->HidenTypeRow:I
    invoke-static {v5}, Lorg/telegram/ui/TaleSettingsActivity;->access$400(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_b

    const-string/jumbo v5, "HidenTypeRow"

    const v6, 0x7f08080a

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "HidenTypeRow"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v5, v6, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    :cond_b
    iget-object v5, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->channelConutTypeRow:I
    invoke-static {v5}, Lorg/telegram/ui/TaleSettingsActivity;->access$500(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_c

    const-string/jumbo v5, "channelConutTypeRow"

    const v6, 0x7f08068c

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "channelConutTypeRow"

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v5, v6, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    :cond_c
    iget-object v5, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->HiddeMenuRow:I
    invoke-static {v5}, Lorg/telegram/ui/TaleSettingsActivity;->access$600(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_d

    const-string/jumbo v5, "HiddeMenuRow"

    const v6, 0x7f0806fc

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "HiddeMenuRow"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v5, v6, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    :cond_d
    iget-object v5, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->rtlConutTypeRow:I
    invoke-static {v5}, Lorg/telegram/ui/TaleSettingsActivity;->access$700(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_e

    const-string/jumbo v5, "rtlConutTypeRow"

    const v6, 0x7f08071b

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "rtlConutTypeRow"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v5, v6, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    :cond_e
    iget-object v5, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->ActiveAnswer:I
    invoke-static {v5}, Lorg/telegram/ui/TaleSettingsActivity;->access$1400(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_f

    const-string/jumbo v5, "txtanswering2"

    const v6, 0x7f08082b

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "txtanswering"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v5, v6, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    :cond_f
    iget-object v5, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->hidenNumberRow:I
    invoke-static {v5}, Lorg/telegram/ui/TaleSettingsActivity;->access$1500(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_10

    const-string/jumbo v5, "hidenNumberRow"

    const v6, 0x7f08082c

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "hidenNumberRow"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v5, v2, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    :cond_10
    :goto_2
    if-ne v4, v10, :cond_1f

    if-nez v1, :cond_11

    new-instance v1, Lorg/telegram/ui/Cells/TextBlockCell;

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/TextBlockCell;-><init>(Landroid/content/Context;)V

    :cond_11
    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/TextBlockCell;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "hoshyar_sh"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    iget-object v2, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->setFontSelect:I
    invoke-static {v2}, Lorg/telegram/ui/TaleSettingsActivity;->access$1100(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v2

    if-ne p1, v2, :cond_12

    const-string/jumbo v2, "MeFontsDialogs"

    const v3, 0x7f08072a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lorg/telegram/ui/Cells/TextBlockCell;->setText(Ljava/lang/String;Z)V

    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->setNewPasswordRow:I
    invoke-static {v2}, Lorg/telegram/ui/TaleSettingsActivity;->access$1200(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v2

    if-ne p1, v2, :cond_13

    const-string/jumbo v2, "SetNewPassword"

    const v3, 0x7f08079f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lorg/telegram/ui/Cells/TextBlockCell;->setText(Ljava/lang/String;Z)V

    :cond_13
    iget-object v2, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->listSecurityRow:I
    invoke-static {v2}, Lorg/telegram/ui/TaleSettingsActivity;->access$1300(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v2

    if-ne p1, v2, :cond_14

    const-string/jumbo v2, "ManagementPassword"

    const v3, 0x7f080722

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lorg/telegram/ui/Cells/TextBlockCell;->setText(Ljava/lang/String;Z)V

    :cond_14
    :goto_3
    return-object v1

    :cond_15
    if-ne v4, v6, :cond_10

    if-nez v1, :cond_16

    new-instance v1, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    :cond_16
    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "hoshyar_sh"

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v2, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->groupPopupNotificationRow:I
    invoke-static {v2}, Lorg/telegram/ui/TaleSettingsActivity;->access$800(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v2

    if-ne p1, v2, :cond_17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    iget-object v2, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->groupPopupNotificationRow:I
    invoke-static {v2}, Lorg/telegram/ui/TaleSettingsActivity;->access$800(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v2

    if-ne p1, v2, :cond_25

    const-string/jumbo v2, "voicechanger"

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_4
    if-nez v2, :cond_19

    const-string/jumbo v2, "voicechanger1"

    const v6, 0x7f0808d1

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    const-string/jumbo v6, "PopupNotification1"

    const v7, 0x7f080777

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v2, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_17
    iget-object v2, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->HiddenKeyRow:I
    invoke-static {v2}, Lorg/telegram/ui/TaleSettingsActivity;->access$1000(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v2

    if-ne p1, v2, :cond_10

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    iget-object v2, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->HiddenKeyRow:I
    invoke-static {v2}, Lorg/telegram/ui/TaleSettingsActivity;->access$1000(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v2

    if-ne p1, v2, :cond_24

    const-string/jumbo v2, "HiddenKeyRow"

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_6
    if-nez v2, :cond_18

    const-string/jumbo v5, "GhostIcon"

    const v6, 0x7f0806e7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    :cond_18
    if-ne v2, v8, :cond_1e

    const-string/jumbo v2, "eyeIcon"

    const v5, 0x7f080869

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_7
    const-string/jumbo v5, "KeyShowHidden"

    const v6, 0x7f080713

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v2, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_19
    if-ne v2, v8, :cond_1a

    const-string/jumbo v2, "voicechanger2"

    const v6, 0x7f0808d2

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_1a
    if-ne v2, v6, :cond_1b

    const-string/jumbo v2, "voicechanger3"

    const v6, 0x7f0808d3

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_1b
    if-ne v2, v10, :cond_1c

    const-string/jumbo v2, "voicechanger4"

    const v6, 0x7f0808d4

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_1c
    const/4 v6, 0x4

    if-ne v2, v6, :cond_1d

    const-string/jumbo v2, "voicechanger5"

    const v6, 0x7f0808d5

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :cond_1d
    const-string/jumbo v2, "voicechanger6"

    const v6, 0x7f0808d6

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :cond_1e
    const-string/jumbo v2, "NewChatIcon"

    const v5, 0x7f080748

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_1f
    const/4 v0, 0x4

    if-ne v4, v0, :cond_20

    if-nez v1, :cond_14

    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_20
    if-ne v4, v9, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->EditBox:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$2600(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_14

    if-nez v1, :cond_21

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;-><init>(Landroid/content/Context;)V

    :cond_21
    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/16 v2, 0xa

    iget-object v3, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2, v9, v2, v9}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setPadding(IIII)V

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_3

    :cond_22
    const/4 v0, 0x6

    if-ne v4, v0, :cond_14

    if-nez v1, :cond_23

    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0200e1

    const-string/jumbo v3, "windowBackgroundGrayShadow"

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_23
    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v2, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->HiddenHelpRow:I
    invoke-static {v2}, Lorg/telegram/ui/TaleSettingsActivity;->access$2700(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v2

    if-ne p1, v2, :cond_14

    const-string/jumbo v2, "HelpHidden"

    const v3, 0x7f0806f8

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_24
    move v2, v3

    goto/16 :goto_6

    :cond_25
    move v2, v3

    goto/16 :goto_4

    :cond_26
    move-object v1, p2

    goto/16 :goto_0

    :cond_27
    move-object v1, p2

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->messageSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1600(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->securitySectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1700(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->groupSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1800(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->setNewRowTheme:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$1900(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->AnswerMachineRow:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$2000(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->empty01:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$2100(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->empty02:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$2200(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->empty03:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$2300(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/TaleSettingsActivity;

    # getter for: Lorg/telegram/ui/TaleSettingsActivity;->empty04:I
    invoke-static {v0}, Lorg/telegram/ui/TaleSettingsActivity;->access$2400(Lorg/telegram/ui/TaleSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
