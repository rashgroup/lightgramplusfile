.class public Lorg/telegram/ui/LanguageSelectActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "LanguageSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

.field public searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;

.field private searchWas:Z

.field private searching:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/LanguageSelectActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searching:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/LanguageSelectActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searching:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/LanguageSelectActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/LanguageSelectActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/LanguageSelectActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/LanguageSelectActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LanguageSelectActivity;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/LanguageSelectActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LanguageSelectActivity;->updateSearchResults(Ljava/util/ArrayList;)V

    return-void
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity$7;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LanguageSelectActivity$7;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity$8;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LanguageSelectActivity$8;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 8

    const/4 v7, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/telegram/ui/LanguageSelectActivity;->searching:Z

    iput-boolean v4, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchWas:Z

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "Language"

    const v2, 0x7f0802ad

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LanguageSelectActivity$1;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    const v1, 0x7f0200f4

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LanguageSelectActivity$2;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, "Search"

    const v2, 0x7f0804ac

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    invoke-direct {v0, p0, p1, v4}, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    invoke-direct {v0, p0, p1, v5}, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->fragmentView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v2, "NoResult"

    const v3, 0x7f08035c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v2, p1, v5, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LanguageSelectActivity$3;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LanguageSelectActivity$4;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LanguageSelectActivity$5;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 15

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/16 v0, 0xc

    new-array v13, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string/jumbo v7, "windowBackgroundWhite"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v13, v14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string/jumbo v7, "actionBarDefault"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v13, v12

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string/jumbo v7, "actionBarDefault"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v13, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string/jumbo v7, "actionBarDefaultIcon"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v13, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string/jumbo v7, "actionBarDefaultTitle"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v13, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string/jumbo v7, "actionBarDefaultSelector"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v13, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const-string/jumbo v7, "actionBarDefaultSearch"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v13, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const-string/jumbo v7, "actionBarDefaultSearchPlaceholder"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v13, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string/jumbo v7, "listSelectorSDK21"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v13, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string/jumbo v7, "emptyListPlaceholder"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v13, v8

    const/16 v0, 0xa

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v12, [Ljava/lang/Class;

    const-class v1, Landroid/view/View;

    aput-object v1, v7, v14

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const-string/jumbo v11, "divider"

    move v6, v14

    move-object v9, v3

    move-object v10, v3

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v4, v13, v0

    const/16 v0, 0xb

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v12, [Ljava/lang/Class;

    const-class v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v1, v7, v14

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v1, "textView"

    aput-object v1, v8, v14

    const-string/jumbo v12, "windowBackgroundWhiteBlackText"

    move v6, v14

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v4, v13, v0

    return-object v13
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchTimer:Ljava/util/Timer;

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity$6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LanguageSelectActivity$6;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
