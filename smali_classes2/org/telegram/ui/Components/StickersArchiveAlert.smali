.class public Lorg/telegram/ui/Components/StickersArchiveAlert;
.super Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
.source "StickersArchiveAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;
    }
.end annotation


# instance fields
.field private currentType:I

.field private ignoreLayout:Z

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private reqId:I

.field private scrollOffsetY:I

.field private stickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;)V"
        }
    .end annotation

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v10, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v9, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v4, :cond_1

    iput v10, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->currentType:I

    const-string/jumbo v4, "ArchivedMasksAlertTitle"

    const v5, 0x7f08008d

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/StickersArchiveAlert;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->stickerSets:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/StickersArchiveAlert;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string/jumbo v5, "windowBackgroundWhiteBlackText"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v5, 0x41b80000    # 23.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v8, 0x41b80000    # 23.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ArchivedMasksAlertInfo"

    const v5, 0x7f08008c

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v7, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersArchiveAlert;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v10, v9}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;-><init>(Lorg/telegram/ui/Components/StickersArchiveAlert;Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v7, v0, v9, v4, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    const v0, -0xa0909

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    const/4 v0, -0x1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v0, "Close"

    const v1, 0x7f080173

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/StickersArchiveAlert$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersArchiveAlert$1;-><init>(Lorg/telegram/ui/Components/StickersArchiveAlert;)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/StickersArchiveAlert;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Settings"

    const v1, 0x7f0804ef

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/StickersArchiveAlert$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersArchiveAlert$2;-><init>(Lorg/telegram/ui/Components/StickersArchiveAlert;)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/StickersArchiveAlert;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    :cond_0
    return-void

    :cond_1
    iput v9, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->currentType:I

    const-string/jumbo v4, "ArchivedStickersAlertTitle"

    const v5, 0x7f080092

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/StickersArchiveAlert;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "ArchivedStickersAlertInfo"

    const v5, 0x7f080091

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/StickersArchiveAlert;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->currentType:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/StickersArchiveAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/StickersArchiveAlert;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->stickerSets:Ljava/util/ArrayList;

    return-object v0
.end method
