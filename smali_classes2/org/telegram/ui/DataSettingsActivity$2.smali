.class Lorg/telegram/ui/DataSettingsActivity$2;
.super Ljava/lang/Object;
.source "DataSettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DataSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DataSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DataSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->wifiDownloadRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->mobileDownloadRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->roamingDownloadRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_13

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x6

    new-array v3, v0, [Z

    new-instance v4, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->mobileDownloadRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    :cond_3
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    const/4 v1, 0x6

    if-ge v2, v1, :cond_12

    const/4 v1, 0x0

    if-nez v2, :cond_8

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_3
    aput-boolean v1, v3, v2

    const-string/jumbo v1, "LocalPhotoCache"

    const v6, 0x7f0802e8

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_4
    new-instance v6, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v7, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTag(Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v7, -0x1

    const/16 v8, 0x30

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v7, ""

    aget-boolean v8, v3, v2

    const/4 v9, 0x1

    invoke-virtual {v6, v1, v7, v8, v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string/jumbo v1, "dialogTextBlack"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTextColor(I)V

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity$2$1;

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/DataSettingsActivity$2$1;-><init>(Lorg/telegram/ui/DataSettingsActivity$2;[Z)V

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->wifiDownloadRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_6

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->roamingDownloadRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    const/4 v6, 0x1

    if-ne v2, v6, :cond_a

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :goto_5
    aput-boolean v1, v3, v2

    const-string/jumbo v1, "LocalAudioCache"

    const v6, 0x7f0802e0

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    :cond_a
    const/4 v6, 0x2

    if-ne v2, v6, :cond_c

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_6
    aput-boolean v1, v3, v2

    const-string/jumbo v1, "LocalVideoCache"

    const v6, 0x7f0802e9

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    :cond_c
    const/4 v6, 0x3

    if-ne v2, v6, :cond_e

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :goto_7
    aput-boolean v1, v3, v2

    const-string/jumbo v1, "FilesDataUsage"

    const v6, 0x7f08020d

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_d
    const/4 v1, 0x0

    goto :goto_7

    :cond_e
    const/4 v6, 0x4

    if-ne v2, v6, :cond_10

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    :goto_8
    aput-boolean v1, v3, v2

    const-string/jumbo v1, "AttachMusic"

    const v6, 0x7f0800b5

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_f
    const/4 v1, 0x0

    goto :goto_8

    :cond_10
    const/4 v6, 0x5

    if-ne v2, v6, :cond_4

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_9
    aput-boolean v1, v3, v2

    const-string/jumbo v1, "LocalGifCache"

    const v6, 0x7f0802e6

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_11
    const/4 v1, 0x0

    goto :goto_9

    :cond_12
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo v1, "Save"

    const v2, 0x7f0804a2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    const-string/jumbo v1, "dialogTextBlue2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity$2$2;

    invoke-direct {v1, p0, v3, p2}, Lorg/telegram/ui/DataSettingsActivity$2$2;-><init>(Lorg/telegram/ui/DataSettingsActivity$2;[ZI)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, -0x1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DataSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v1}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DataSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->useLessDataForCallsRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_15

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "UseLessDataNever"

    const v5, 0x7f080551

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "UseLessDataOnMobile"

    const v5, 0x7f080552

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "UseLessDataAlways"

    const v5, 0x7f080550

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string/jumbo v3, "VoipUseLessData"

    const v4, 0x7f08058e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "VoipDataSaving"

    const/4 v5, 0x0

    invoke-interface {v6, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Lorg/telegram/ui/DataSettingsActivity$2$3;

    invoke-direct {v5, p0, v6, p2}, Lorg/telegram/ui/DataSettingsActivity$2$3;-><init>(Lorg/telegram/ui/DataSettingsActivity$2;Landroid/content/SharedPreferences;I)V

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->createSingleChoiceDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/DataSettingsActivity;->setVisibleDialog(Landroid/app/Dialog;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->mobileUsageRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    new-instance v1, Lorg/telegram/ui/DataUsageActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/DataUsageActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DataSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->roamingUsageRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    new-instance v1, Lorg/telegram/ui/DataUsageActivity;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/telegram/ui/DataUsageActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DataSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->wifiUsageRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    new-instance v1, Lorg/telegram/ui/DataUsageActivity;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/telegram/ui/DataUsageActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DataSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0
.end method
