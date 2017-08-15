.class public Lorg/telegram/ui/tools/c;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "CacheCleaner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/c$e;,
        Lorg/telegram/ui/tools/c$d;,
        Lorg/telegram/ui/tools/c$c;,
        Lorg/telegram/ui/tools/c$b;,
        Lorg/telegram/ui/tools/c$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/FrameLayout;

.field b:Landroid/app/ProgressDialog;

.field private final c:I

.field private d:J

.field private e:I

.field private f:J

.field private g:Z

.field private volatile h:Z

.field private i:[Z

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:I

.field private o:J

.field private p:J


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/tools/c;->j:J

    iput-wide v2, p0, Lorg/telegram/ui/tools/c;->f:J

    iput-wide v2, p0, Lorg/telegram/ui/tools/c;->k:J

    iput-wide v2, p0, Lorg/telegram/ui/tools/c;->d:J

    iput-wide v2, p0, Lorg/telegram/ui/tools/c;->l:J

    iput-wide v2, p0, Lorg/telegram/ui/tools/c;->m:J

    iput-wide v2, p0, Lorg/telegram/ui/tools/c;->p:J

    iput-wide v2, p0, Lorg/telegram/ui/tools/c;->o:J

    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/ui/tools/c;->i:[Z

    iput-boolean v4, p0, Lorg/telegram/ui/tools/c;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/tools/c;->h:Z

    iput v4, p0, Lorg/telegram/ui/tools/c;->c:I

    return-void
.end method

.method private a(Ljava/io/File;I)J
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/tools/c;->h:Z

    if-eqz v0, :cond_2

    :cond_0
    move-wide v0, v2

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_3

    move-wide v0, v2

    goto :goto_0

    :cond_3
    array-length v6, v5

    const/4 v0, 0x0

    move v4, v0

    move-wide v0, v2

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v7, v5, v4

    iget-boolean v8, p0, Lorg/telegram/ui/tools/c;->h:Z

    if-eqz v8, :cond_4

    move-wide v0, v2

    goto :goto_0

    :cond_4
    if-eq p2, v10, :cond_5

    if-ne p2, v11, :cond_7

    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ".mp3"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string/jumbo v9, ".m4a"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_6
    if-ne p2, v10, :cond_7

    :cond_7
    :goto_2
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-direct {p0, v7, p2}, Lorg/telegram/ui/tools/c;->a(Ljava/io/File;I)J

    move-result-wide v8

    add-long/2addr v0, v8

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    if-ne p2, v11, :cond_7

    goto :goto_2

    :cond_9
    invoke-virtual {v7}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    add-long/2addr v0, v8

    goto :goto_3

    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0

    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_b
    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lorg/telegram/ui/tools/c;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/ui/tools/c;->f:J

    return-wide p1
.end method

.method static synthetic a(Lorg/telegram/ui/tools/c;Ljava/io/File;I)J
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/tools/c;->a(Ljava/io/File;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private a()V
    .locals 12

    const v11, 0x7f0201a4

    const/16 v10, 0x30

    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/c;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v1, v4

    :goto_0
    const/4 v0, 0x6

    if-ge v1, v0, :cond_8

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    if-nez v1, :cond_3

    iget-wide v2, p0, Lorg/telegram/ui/tools/c;->m:J

    const-string/jumbo v0, "LocalPhotoCache"

    const v6, 0x7f0802e8

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/tools/c;->i:[Z

    aput-boolean v8, v6, v1

    new-instance v6, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/c;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundResource(I)V

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7, v8, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/telegram/ui/tools/c$a;

    invoke-direct {v0, p0}, Lorg/telegram/ui/tools/c$a;-><init>(Lorg/telegram/ui/tools/c;)V

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->i:[Z

    aput-boolean v4, v0, v1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    if-ne v1, v8, :cond_4

    iget-wide v2, p0, Lorg/telegram/ui/tools/c;->p:J

    const-string/jumbo v0, "LocalVideoCache"

    const v6, 0x7f0802e9

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v6, 0x2

    if-ne v1, v6, :cond_5

    iget-wide v2, p0, Lorg/telegram/ui/tools/c;->k:J

    const-string/jumbo v0, "LocalDocumentCache"

    const v6, 0x7f0802e5

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v6, 0x3

    if-ne v1, v6, :cond_6

    iget-wide v2, p0, Lorg/telegram/ui/tools/c;->l:J

    const-string/jumbo v0, "LocalMusicCache"

    const v6, 0x7f0802e7

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const/4 v6, 0x4

    if-ne v1, v6, :cond_7

    iget-wide v2, p0, Lorg/telegram/ui/tools/c;->d:J

    const-string/jumbo v0, "LocalAudioCache"

    const v6, 0x7f0802e0

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    const/4 v6, 0x5

    if-ne v1, v6, :cond_1

    iget-wide v2, p0, Lorg/telegram/ui/tools/c;->f:J

    const-string/jumbo v0, "LocalCache"

    const v6, 0x7f0802e1

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/c;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "moreFilesDetail"

    const v2, 0x7f080898

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundResource(I)V

    const/4 v1, -0x2

    invoke-static {v9, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/c;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundResource(I)V

    const-string/jumbo v1, "ClearMediaCache"

    const v2, 0x7f08016f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    const-string/jumbo v1, "dialogTextBlack"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    new-instance v1, Lorg/telegram/ui/tools/c$b;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/c$b;-><init>(Lorg/telegram/ui/tools/c;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->a:Landroid/widget/FrameLayout;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v9, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/tools/c;->g:Z

    return p1
.end method

.method static synthetic a(Lorg/telegram/ui/tools/c;)[Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->i:[Z

    return-object v0
.end method

.method static synthetic b(Lorg/telegram/ui/tools/c;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/ui/tools/c;->m:J

    return-wide p1
.end method

.method static synthetic b(Lorg/telegram/ui/tools/c;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/c;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "Loading"

    const v2, 0x7f0802df

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/tools/c$d;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/tools/c$d;-><init>(Lorg/telegram/ui/tools/c;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lorg/telegram/ui/tools/c;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/ui/tools/c;->p:J

    return-wide p1
.end method

.method static synthetic c(Lorg/telegram/ui/tools/c;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic d(Lorg/telegram/ui/tools/c;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/ui/tools/c;->k:J

    return-wide p1
.end method

.method static synthetic d(Lorg/telegram/ui/tools/c;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/tools/c;->b()V

    return-void
.end method

.method static synthetic e(Lorg/telegram/ui/tools/c;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/ui/tools/c;->l:J

    return-wide p1
.end method

.method static synthetic e(Lorg/telegram/ui/tools/c;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/tools/c;->a()V

    return-void
.end method

.method static synthetic f(Lorg/telegram/ui/tools/c;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/ui/tools/c;->d:J

    return-wide p1
.end method

.method static synthetic f(Lorg/telegram/ui/tools/c;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/c;->h:Z

    return v0
.end method

.method static synthetic g(Lorg/telegram/ui/tools/c;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/tools/c;->f:J

    return-wide v0
.end method

.method static synthetic g(Lorg/telegram/ui/tools/c;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/ui/tools/c;->o:J

    return-wide p1
.end method

.method static synthetic h(Lorg/telegram/ui/tools/c;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/tools/c;->p:J

    return-wide v0
.end method

.method static synthetic i(Lorg/telegram/ui/tools/c;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/tools/c;->d:J

    return-wide v0
.end method

.method static synthetic j(Lorg/telegram/ui/tools/c;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/tools/c;->m:J

    return-wide v0
.end method

.method static synthetic k(Lorg/telegram/ui/tools/c;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/tools/c;->k:J

    return-wide v0
.end method

.method static synthetic l(Lorg/telegram/ui/tools/c;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/tools/c;->l:J

    return-wide v0
.end method

.method static synthetic m(Lorg/telegram/ui/tools/c;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic n(Lorg/telegram/ui/tools/c;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "CacheCleaner"

    const v2, 0x7f080668

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/tools/c$e;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/c$e;-><init>(Lorg/telegram/ui/tools/c;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    const v1, 0x7f020096

    const/high16 v2, 0x42380000    # 46.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/c;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->b:Landroid/app/ProgressDialog;

    const-string/jumbo v1, "Loading"

    const v2, 0x7f0802df

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/c;->setVisibleDialog(Landroid/app/Dialog;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/c;->fragmentView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/tools/c;->a:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/tools/c;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onFragmentCreate()Z
    .locals 3

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/tools/c;->n:I

    iget v0, p0, Lorg/telegram/ui/tools/c;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/tools/c;->n:I

    iput v0, p0, Lorg/telegram/ui/tools/c;->e:I

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "cache4.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/tools/c;->j:J

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/tools/c$c;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/c$c;-><init>(Lorg/telegram/ui/tools/c;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/tools/c;->h:Z

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    return-void
.end method
