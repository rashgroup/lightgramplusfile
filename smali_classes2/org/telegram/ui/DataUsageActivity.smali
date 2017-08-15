.class public Lorg/telegram/ui/DataUsageActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "DataUsageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/DataUsageActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private audiosBytesReceivedRow:I

.field private audiosBytesSentRow:I

.field private audiosReceivedRow:I

.field private audiosSection2Row:I

.field private audiosSectionRow:I

.field private audiosSentRow:I

.field private callsBytesReceivedRow:I

.field private callsBytesSentRow:I

.field private callsReceivedRow:I

.field private callsSection2Row:I

.field private callsSectionRow:I

.field private callsSentRow:I

.field private callsTotalTimeRow:I

.field private currentType:I

.field private filesBytesReceivedRow:I

.field private filesBytesSentRow:I

.field private filesReceivedRow:I

.field private filesSection2Row:I

.field private filesSectionRow:I

.field private filesSentRow:I

.field private listAdapter:Lorg/telegram/ui/DataUsageActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private messagesBytesReceivedRow:I

.field private messagesBytesSentRow:I

.field private messagesReceivedRow:I

.field private messagesSection2Row:I

.field private messagesSectionRow:I

.field private messagesSentRow:I

.field private photosBytesReceivedRow:I

.field private photosBytesSentRow:I

.field private photosReceivedRow:I

.field private photosSection2Row:I

.field private photosSectionRow:I

.field private photosSentRow:I

.field private resetRow:I

.field private resetSection2Row:I

.field private rowCount:I

.field private totalBytesReceivedRow:I

.field private totalBytesSentRow:I

.field private totalSection2Row:I

.field private totalSectionRow:I

.field private videosBytesReceivedRow:I

.field private videosBytesSentRow:I

.field private videosReceivedRow:I

.field private videosSection2Row:I

.field private videosSectionRow:I

.field private videosSentRow:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->messagesSentRow:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->messagesReceivedRow:I

    iput p1, p0, Lorg/telegram/ui/DataUsageActivity;->currentType:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->resetRow:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->currentType:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->messagesReceivedRow:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->messagesBytesSentRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->messagesBytesReceivedRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->photosSentRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->photosReceivedRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->photosBytesSentRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->photosBytesReceivedRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->audiosSentRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->audiosReceivedRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->audiosBytesSentRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/DataUsageActivity;)Lorg/telegram/ui/DataUsageActivity$ListAdapter;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity;->listAdapter:Lorg/telegram/ui/DataUsageActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->audiosBytesReceivedRow:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->videosSentRow:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->videosReceivedRow:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->videosBytesSentRow:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->videosBytesReceivedRow:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->filesSentRow:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->filesReceivedRow:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->filesBytesSentRow:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->filesBytesReceivedRow:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->callsTotalTimeRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->totalBytesSentRow:I

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->totalBytesReceivedRow:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->totalSectionRow:I

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->callsSectionRow:I

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->filesSectionRow:I

    return v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->audiosSectionRow:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->videosSectionRow:I

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->photosSectionRow:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->messagesSectionRow:I

    return v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->callsSection2Row:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->resetSection2Row:I

    return v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->filesSection2Row:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->audiosSection2Row:I

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->videosSection2Row:I

    return v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->photosSection2Row:I

    return v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->messagesSection2Row:I

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->totalSection2Row:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->callsSentRow:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->callsReceivedRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->callsBytesSentRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->callsBytesReceivedRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/DataUsageActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->messagesSentRow:I

    return v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->currentType:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "MobileUsage"

    const v2, 0x7f080323

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/DataUsageActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DataUsageActivity$1;-><init>(Lorg/telegram/ui/DataUsageActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/DataUsageActivity$ListAdapter;-><init>(Lorg/telegram/ui/DataUsageActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/DataUsageActivity;->listAdapter:Lorg/telegram/ui/DataUsageActivity$ListAdapter;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/DataUsageActivity;->fragmentView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity;->fragmentView:Landroid/view/View;

    const-string/jumbo v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v2, p1, v5, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0x33

    invoke-static {v4, v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity;->listAdapter:Lorg/telegram/ui/DataUsageActivity$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/DataUsageActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DataUsageActivity$2;-><init>(Lorg/telegram/ui/DataUsageActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity;->fragmentView:Landroid/view/View;

    return-object v0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->currentType:I

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "WiFiUsage"

    const v2, 0x7f0805a2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "RoamingUsage"

    const v2, 0x7f08049e

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 11

    const/16 v0, 0x10

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueHeader"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteValueText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteRedText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    return-object v9
.end method

.method public onFragmentCreate()Z
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->photosSectionRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->photosSentRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->photosReceivedRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->photosBytesSentRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->photosBytesReceivedRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->photosSection2Row:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->videosSectionRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->videosSentRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->videosReceivedRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->videosBytesSentRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->videosBytesReceivedRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->videosSection2Row:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->audiosSectionRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->audiosSentRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->audiosReceivedRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->audiosBytesSentRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->audiosBytesReceivedRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->audiosSection2Row:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->filesSectionRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->filesSentRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->filesReceivedRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->filesBytesSentRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->filesBytesReceivedRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->filesSection2Row:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->callsSectionRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->callsSentRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->callsReceivedRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->callsBytesSentRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->callsBytesReceivedRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->callsTotalTimeRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->callsSection2Row:I

    :goto_0
    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->messagesSectionRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->messagesBytesSentRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->messagesBytesReceivedRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->messagesSection2Row:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->totalSectionRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->totalBytesSentRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->totalBytesReceivedRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->totalSection2Row:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->resetRow:I

    iget v0, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/DataUsageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataUsageActivity;->resetSection2Row:I

    const/4 v0, 0x1

    return v0

    :cond_0
    iput v2, p0, Lorg/telegram/ui/DataUsageActivity;->callsSectionRow:I

    iput v2, p0, Lorg/telegram/ui/DataUsageActivity;->callsSentRow:I

    iput v2, p0, Lorg/telegram/ui/DataUsageActivity;->callsReceivedRow:I

    iput v2, p0, Lorg/telegram/ui/DataUsageActivity;->callsBytesSentRow:I

    iput v2, p0, Lorg/telegram/ui/DataUsageActivity;->callsBytesReceivedRow:I

    iput v2, p0, Lorg/telegram/ui/DataUsageActivity;->callsTotalTimeRow:I

    iput v2, p0, Lorg/telegram/ui/DataUsageActivity;->callsSection2Row:I

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity;->listAdapter:Lorg/telegram/ui/DataUsageActivity$ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity;->listAdapter:Lorg/telegram/ui/DataUsageActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
