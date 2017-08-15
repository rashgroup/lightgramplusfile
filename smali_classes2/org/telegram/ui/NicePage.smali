.class public Lorg/telegram/ui/NicePage;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "NicePage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/NicePage$OnlineThemeDelegate;
    }
.end annotation


# static fields
.field public static dialogsLoaded:Z

.field private static mainFragmentsStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ProgressView:Landroid/app/ProgressDialog;

.field private actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private delegate:Lorg/telegram/ui/NicePage$OnlineThemeDelegate;

.field private emptyView:Landroid/widget/LinearLayout;

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private progressView:Landroid/widget/ProgressBar;

.field r_00:Landroid/widget/RadioButton;

.field r_01:Landroid/widget/RadioButton;

.field r_02:Landroid/widget/RadioButton;

.field r_03:Landroid/widget/RadioButton;

.field r_04:Landroid/widget/RadioButton;

.field r_05:Landroid/widget/RadioButton;

.field private visibleDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/NicePage;->mainFragmentsStack:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 9

    const v2, 0x7f08083b

    const/4 v8, -0x1

    const/4 v7, 0x1

    new-instance v0, Lorg/telegram/ui/NicePage$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/NicePage$1;-><init>(Lorg/telegram/ui/NicePage;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/NicePage;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/NicePage;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, p0, Lorg/telegram/ui/NicePage;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NicePage;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "beautifulwrite"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/NicePage;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/NicePage;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/NicePage$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/NicePage$2;-><init>(Lorg/telegram/ui/NicePage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/NicePage;->fragmentView:Landroid/view/View;

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f040054

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f1000d3

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f100270

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lorg/telegram/ui/NicePage;->r_00:Landroid/widget/RadioButton;

    const v1, 0x7f1000d5

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lorg/telegram/ui/NicePage;->r_01:Landroid/widget/RadioButton;

    const v1, 0x7f1000d6

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lorg/telegram/ui/NicePage;->r_02:Landroid/widget/RadioButton;

    const v1, 0x7f1000d7

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lorg/telegram/ui/NicePage;->r_03:Landroid/widget/RadioButton;

    const v1, 0x7f1000d8

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lorg/telegram/ui/NicePage;->r_04:Landroid/widget/RadioButton;

    const v1, 0x7f1000d9

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lorg/telegram/ui/NicePage;->r_05:Landroid/widget/RadioButton;

    const v1, 0x7f100274

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f100273

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v2, 0x7f100271

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const-string/jumbo v6, "actionBarDefault"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const-string/jumbo v2, "windowBackgroundWhiteBlueHeader"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/NicePage;->r_00:Landroid/widget/RadioButton;

    const-string/jumbo v2, "chats_name"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/NicePage;->r_01:Landroid/widget/RadioButton;

    const-string/jumbo v2, "chats_name"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/NicePage;->r_02:Landroid/widget/RadioButton;

    const-string/jumbo v2, "chats_name"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/NicePage;->r_03:Landroid/widget/RadioButton;

    const-string/jumbo v2, "chats_name"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/NicePage;->r_04:Landroid/widget/RadioButton;

    const-string/jumbo v2, "chats_name"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/NicePage;->r_05:Landroid/widget/RadioButton;

    const-string/jumbo v2, "chats_name"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    const v1, 0x7f100276

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const-string/jumbo v2, "chats_name"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->s()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    new-instance v2, Lorg/telegram/ui/NicePage$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/NicePage$3;-><init>(Lorg/telegram/ui/NicePage;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f100272

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lorg/telegram/ui/NicePage$4;

    invoke-direct {v2, p0, v1, p1}, Lorg/telegram/ui/NicePage$4;-><init>(Lorg/telegram/ui/NicePage;Landroid/widget/EditText;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->j()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/NicePage;->r_00:Landroid/widget/RadioButton;

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    if-ne v1, v7, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/NicePage;->r_01:Landroid/widget/RadioButton;

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/NicePage;->r_02:Landroid/widget/RadioButton;

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/NicePage;->r_03:Landroid/widget/RadioButton;

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/NicePage;->r_04:Landroid/widget/RadioButton;

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4
    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/NicePage;->r_05:Landroid/widget/RadioButton;

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_5
    new-instance v1, Lorg/telegram/ui/NicePage$5;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/NicePage$5;-><init>(Lorg/telegram/ui/NicePage;Landroid/widget/RadioGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v8, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, -0x40000000    # -2.0f

    invoke-static {v8, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/NicePage;->fragmentView:Landroid/view/View;

    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/NicePage;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "beautifulwrite"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public onFragmentCreate()Z
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/NicePage;->delegate:Lorg/telegram/ui/NicePage$OnlineThemeDelegate;

    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/NicePage;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v0

    return v0
.end method
