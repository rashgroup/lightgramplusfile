.class public Lorg/telegram/ui/FontSelector;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "FontSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/FontSelector$OnlineThemeDelegate;
    }
.end annotation


# static fields
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

.field private delegate:Lorg/telegram/ui/FontSelector$OnlineThemeDelegate;

.field private emptyView:Landroid/widget/LinearLayout;

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field num_font:Ljava/lang/String;

.field private progressView:Landroid/widget/ProgressBar;

.field r_00:Landroid/widget/RadioButton;

.field r_01:Landroid/widget/RadioButton;

.field r_02:Landroid/widget/RadioButton;

.field r_03:Landroid/widget/RadioButton;

.field r_04:Landroid/widget/RadioButton;

.field r_05:Landroid/widget/RadioButton;

.field r_06:Landroid/widget/RadioButton;

.field r_07:Landroid/widget/RadioButton;

.field r_08:Landroid/widget/RadioButton;

.field r_09:Landroid/widget/RadioButton;

.field r_10:Landroid/widget/RadioButton;

.field r_11:Landroid/widget/RadioButton;

.field txt_01:Landroid/widget/TextView;

.field txt_02:Landroid/widget/TextView;

.field txt_03:Landroid/widget/TextView;

.field txt_04:Landroid/widget/TextView;

.field txt_05:Landroid/widget/TextView;

.field txt_06:Landroid/widget/TextView;

.field txt_07:Landroid/widget/TextView;

.field txt_08:Landroid/widget/TextView;

.field private visibleDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/FontSelector;->mainFragmentsStack:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public Restarter()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->restartApp()V

    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 17

    new-instance v1, Lorg/telegram/ui/FontSelector$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lorg/telegram/ui/FontSelector$1;-><init>(Lorg/telegram/ui/FontSelector;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/FontSelector;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/FontSelector;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/FontSelector;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x7f0200e8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/FontSelector;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "MeFontsDialogs"

    const v3, 0x7f08072a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/FontSelector;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/FontSelector;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/FontSelector$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/FontSelector$2;-><init>(Lorg/telegram/ui/FontSelector;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/FontSelector;->fragmentView:Landroid/view/View;

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f040035

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v6, -0x1

    invoke-direct {v1, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/IRANSansMobile.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/IRANSansMobile_Bold.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/IRANSansMobile_Light.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/IRANSansMobile_Medium.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/IRANSansMobile_UltraLight.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/hama.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/dastnevis.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/byekan.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/afsaneh.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/morvarid.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/ritalic.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v16

    const v1, 0x7f1000d3

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    const v2, 0x7f1000d4

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/FontSelector;->r_00:Landroid/widget/RadioButton;

    const v2, 0x7f1000d5

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/FontSelector;->r_01:Landroid/widget/RadioButton;

    const v2, 0x7f1000d6

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/FontSelector;->r_02:Landroid/widget/RadioButton;

    const v2, 0x7f1000d7

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/FontSelector;->r_03:Landroid/widget/RadioButton;

    const v2, 0x7f1000d8

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/FontSelector;->r_04:Landroid/widget/RadioButton;

    const v2, 0x7f1000d9

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/FontSelector;->r_05:Landroid/widget/RadioButton;

    const v2, 0x7f1000da

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/FontSelector;->r_06:Landroid/widget/RadioButton;

    const v2, 0x7f1000db

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/FontSelector;->r_07:Landroid/widget/RadioButton;

    const v2, 0x7f1000dc

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/FontSelector;->r_08:Landroid/widget/RadioButton;

    const v2, 0x7f1000dd

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/FontSelector;->r_09:Landroid/widget/RadioButton;

    const v2, 0x7f1000de

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/FontSelector;->r_10:Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/FontSelector;->r_00:Landroid/widget/RadioButton;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/FontSelector;->r_01:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/FontSelector;->r_02:Landroid/widget/RadioButton;

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/FontSelector;->r_03:Landroid/widget/RadioButton;

    invoke-virtual {v2, v8}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/FontSelector;->r_04:Landroid/widget/RadioButton;

    invoke-virtual {v2, v9}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/FontSelector;->r_05:Landroid/widget/RadioButton;

    invoke-virtual {v2, v10}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/FontSelector;->r_06:Landroid/widget/RadioButton;

    invoke-virtual {v2, v11}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/FontSelector;->r_07:Landroid/widget/RadioButton;

    invoke-virtual {v2, v12}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/FontSelector;->r_08:Landroid/widget/RadioButton;

    invoke-virtual {v2, v13}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/FontSelector;->r_09:Landroid/widget/RadioButton;

    invoke-virtual {v2, v14}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/FontSelector;->r_10:Landroid/widget/RadioButton;

    invoke-virtual {v2, v15}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/FontSelector;->num_font:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/FontSelector;->num_font:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/FontSelector;->r_00:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/FontSelector;->r_01:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    const/4 v6, 0x2

    if-ne v2, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/FontSelector;->r_02:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    const/4 v6, 0x3

    if-ne v2, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/FontSelector;->r_03:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    const/4 v6, 0x4

    if-ne v2, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/FontSelector;->r_04:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4
    const/4 v6, 0x5

    if-ne v2, v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/FontSelector;->r_05:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_5
    const/4 v6, 0x6

    if-ne v2, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/FontSelector;->r_06:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_6
    const/4 v6, 0x7

    if-ne v2, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/FontSelector;->r_07:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_7
    const/16 v6, 0x8

    if-ne v2, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/FontSelector;->r_08:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_8
    const/16 v6, 0x9

    if-ne v2, v6, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/FontSelector;->r_09:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_9
    const/16 v6, 0xa

    if-ne v2, v6, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/FontSelector;->r_10:Landroid/widget/RadioButton;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_a
    new-instance v2, Lorg/telegram/ui/FontSelector$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/FontSelector$3;-><init>(Lorg/telegram/ui/FontSelector;Landroid/widget/RadioGroup;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/FontSelector;->fragmentView:Landroid/view/View;

    return-object v1

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/FontSelector;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "MeFontsDialogs"

    const v3, 0x7f08072a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
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

    iput-object v0, p0, Lorg/telegram/ui/FontSelector;->delegate:Lorg/telegram/ui/FontSelector$OnlineThemeDelegate;

    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/FontSelector;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v0

    return v0
.end method
