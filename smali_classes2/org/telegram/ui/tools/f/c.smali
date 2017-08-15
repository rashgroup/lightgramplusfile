.class public Lorg/telegram/ui/tools/f/c;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SpecialContactsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/f/c$f;,
        Lorg/telegram/ui/tools/f/c$e;,
        Lorg/telegram/ui/tools/f/c$d;,
        Lorg/telegram/ui/tools/f/c$c;,
        Lorg/telegram/ui/tools/f/c$b;,
        Lorg/telegram/ui/tools/f/c$a;
    }
.end annotation


# instance fields
.field a:Lorg/telegram/ui/Cells/TextCheckCell;

.field b:Lorg/telegram/ui/Cells/TextCheckCell;

.field private c:Z

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/tools/f/c;->c:Z

    return-void
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lorg/telegram/ui/tools/f/b;

    if-eqz v3, :cond_0

    check-cast v0, Lorg/telegram/ui/tools/f/b;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/tools/f/b;->a(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/f/c;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/f/c;->c:Z

    return v0
.end method

.method static synthetic a(Lorg/telegram/ui/tools/f/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/tools/f/c;->c:Z

    return p1
.end method

.method static synthetic b(Lorg/telegram/ui/tools/f/c;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lorg/telegram/ui/tools/f/c;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->f:Landroid/widget/BaseAdapter;

    return-object v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11

    const/4 v2, 0x2

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v8, -0x1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f0200e8

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "SpecialContacts"

    const v4, 0x7f0807da

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/tools/f/c$a;

    invoke-direct {v3, p0}, Lorg/telegram/ui/tools/f/c$a;-><init>(Lorg/telegram/ui/tools/f/c;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    const v3, 0x7f020046

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v3, 0x7f0201c8

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v0, Lorg/telegram/ui/tools/f/a;

    invoke-direct {v0, p1}, Lorg/telegram/ui/tools/f/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/c;->f:Landroid/widget/BaseAdapter;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/c;->fragmentView:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v4, 0x31

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v0, v4, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/c;->b:Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->b:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->b:Lorg/telegram/ui/Cells/TextCheckCell;

    const-string/jumbo v5, "EnableSpecialContacts"

    const v6, 0x7f0806be

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "specific_contact"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v5, v6, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->b:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v5, Lorg/telegram/ui/tools/f/c$b;

    invoke-direct {v5, p0, v4}, Lorg/telegram/ui/tools/f/c$b;-><init>(Lorg/telegram/ui/tools/f/c;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->b:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/c;->a:Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->a:Lorg/telegram/ui/Cells/TextCheckCell;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->a:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->a:Lorg/telegram/ui/Cells/TextCheckCell;

    const-string/jumbo v5, "EnableSpecialContactsService"

    const v6, 0x7f0806bf

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "specific_contact_service"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v5, v6, v9}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->a:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v5, Lorg/telegram/ui/tools/f/c$c;

    invoke-direct {v5, p0, v4}, Lorg/telegram/ui/tools/f/c$c;-><init>(Lorg/telegram/ui/tools/f/c;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->a:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/Components/TextDescriptionCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/TextDescriptionCell;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/TextDescriptionCell;->setVisibility(I)V

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/TextDescriptionCell;->setBackgroundColor(I)V

    const-string/jumbo v5, "EnableSCServiceDes"

    const v6, 0x7f0806bd

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lorg/telegram/ui/Components/TextDescriptionCell;->setText(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v6, 0x30

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/tools/f/c$d;

    invoke-direct {v0, p0}, Lorg/telegram/ui/tools/f/c$d;-><init>(Lorg/telegram/ui/tools/f/c;)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/c;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->d:Landroid/widget/TextView;

    const v6, -0x7f7f80

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->d:Landroid/widget/TextView;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->d:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->d:Landroid/widget/TextView;

    const-string/jumbo v6, "NoSpecialContacts"

    const v7, 0x7f080754

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->d:Landroid/widget/TextView;

    const-string/jumbo v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v6, p0, Lorg/telegram/ui/tools/f/c;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    const/high16 v5, 0x2000000

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    iget-object v5, p0, Lorg/telegram/ui/tools/f/c;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    iget-object v5, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    new-instance v1, Lorg/telegram/ui/tools/f/c$e;

    invoke-direct {v1, p0, v4}, Lorg/telegram/ui/tools/f/c$e;-><init>(Lorg/telegram/ui/tools/f/c;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->e:Landroid/widget/ListView;

    new-instance v1, Lorg/telegram/ui/tools/f/c$f;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/f/c$f;-><init>(Lorg/telegram/ui/tools/f/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->fragmentView:Landroid/view/View;

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/tools/f/c;->a(I)V

    :cond_1
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->f:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
