.class public Lorg/telegram/ui/tools/e/a;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PPPP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/e/a$h;,
        Lorg/telegram/ui/tools/e/a$g;,
        Lorg/telegram/ui/tools/e/a$f;,
        Lorg/telegram/ui/tools/e/a$e;,
        Lorg/telegram/ui/tools/e/a$d;,
        Lorg/telegram/ui/tools/e/a$c;,
        Lorg/telegram/ui/tools/e/a$b;,
        Lorg/telegram/ui/tools/e/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/graphics/Bitmap;

.field private c:Lorg/telegram/ui/ChatActivity;

.field private d:J

.field private e:Lorg/telegram/ui/tools/e/a$g;

.field private f:Landroid/widget/ImageButton;

.field private g:Ljava/io/File;

.field private h:Lorg/telegram/ui/tools/e/a$h;

.field private i:Z

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/widget/TextView;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Landroid/widget/ImageButton;

.field private p:Lorg/telegram/messenger/MediaController$PhotoEntry;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChatActivity;J)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/tools/e/a;->b:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lorg/telegram/ui/tools/e/a;->g:Ljava/io/File;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/ui/tools/e/a;->l:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/tools/e/a;->p:Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/tools/e/a;->a:I

    const v0, -0xe56be8

    iput v0, p0, Lorg/telegram/ui/tools/e/a;->m:I

    const/16 v0, 0xc

    iput v0, p0, Lorg/telegram/ui/tools/e/a;->n:I

    iput-object p1, p0, Lorg/telegram/ui/tools/e/a;->c:Lorg/telegram/ui/ChatActivity;

    iput-wide p2, p0, Lorg/telegram/ui/tools/e/a;->d:J

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/e/a;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/e/a;->a:I

    return p1
.end method

.method static synthetic a(Lorg/telegram/ui/tools/e/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/e/a;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lorg/telegram/ui/tools/e/a;)Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->p:Lorg/telegram/messenger/MediaController$PhotoEntry;

    return-object v0
.end method

.method static synthetic a(Lorg/telegram/ui/tools/e/a;Lorg/telegram/messenger/MediaController$PhotoEntry;)Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/e/a;->p:Lorg/telegram/messenger/MediaController$PhotoEntry;

    return-object p1
.end method

.method private a()V
    .locals 8

    const/4 v3, 0x1

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "painting_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x3b9ac9fe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/e/a;->q:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->e:Lorg/telegram/ui/tools/e/a$g;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/tools/e/a$g;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->e:Lorg/telegram/ui/tools/e/a$g;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/e/a$g;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/Telegram/HonariTell/Painting/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lorg/telegram/ui/tools/e/a;->q:Ljava/lang/String;

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->e:Lorg/telegram/ui/tools/e/a$g;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/tools/e/a$g;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->e:Lorg/telegram/ui/tools/e/a$g;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/e/a$g;->destroyDrawingCache()V

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->h:Lorg/telegram/ui/tools/e/a$h;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/tools/e/a$h;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->h:Lorg/telegram/ui/tools/e/a$h;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/e/a$h;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->h:Lorg/telegram/ui/tools/e/a$h;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/tools/e/a$h;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->h:Lorg/telegram/ui/tools/e/a$h;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/e/a$h;->destroyDrawingCache()V

    goto :goto_2
.end method

.method static synthetic a(Lorg/telegram/ui/tools/e/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/tools/e/a;->i:Z

    return p1
.end method

.method static synthetic b(Lorg/telegram/ui/tools/e/a;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/e/a;->m:I

    return p1
.end method

.method static synthetic b(Lorg/telegram/ui/tools/e/a;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/tools/e/a;->d:J

    return-wide v0
.end method

.method private b()V
    .locals 6

    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/Telegram/HonariTell/Painting"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic c(Lorg/telegram/ui/tools/e/a;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/e/a;->n:I

    return p1
.end method

.method static synthetic c(Lorg/telegram/ui/tools/e/a;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/tools/e/a;->b()V

    return-void
.end method

.method static synthetic d(Lorg/telegram/ui/tools/e/a;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/tools/e/a;->a()V

    return-void
.end method

.method static synthetic e(Lorg/telegram/ui/tools/e/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lorg/telegram/ui/tools/e/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lorg/telegram/ui/tools/e/a;)Lorg/telegram/ui/ChatActivity;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->c:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic h(Lorg/telegram/ui/tools/e/a;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic i(Lorg/telegram/ui/tools/e/a;)Lorg/telegram/ui/tools/e/a$g;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->e:Lorg/telegram/ui/tools/e/a$g;

    return-object v0
.end method

.method static synthetic j(Lorg/telegram/ui/tools/e/a;)Lorg/telegram/ui/tools/e/a$h;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->h:Lorg/telegram/ui/tools/e/a$h;

    return-object v0
.end method

.method static synthetic k(Lorg/telegram/ui/tools/e/a;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->o:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic l(Lorg/telegram/ui/tools/e/a;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->f:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic m(Lorg/telegram/ui/tools/e/a;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->j:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic n(Lorg/telegram/ui/tools/e/a;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/e/a;->a:I

    return v0
.end method

.method static synthetic o(Lorg/telegram/ui/tools/e/a;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/e/a;->m:I

    return v0
.end method

.method static synthetic p(Lorg/telegram/ui/tools/e/a;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/e/a;->n:I

    return v0
.end method

.method static synthetic q(Lorg/telegram/ui/tools/e/a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r(Lorg/telegram/ui/tools/e/a;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/e/a;->i:Z

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->e:Lorg/telegram/ui/tools/e/a$g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->e:Lorg/telegram/ui/tools/e/a$g;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/tools/e/a$g;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->j:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/16 v0, 0x1e

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x7f0200e8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "Painting"

    const v3, 0x7f08076d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/tools/e/a$a;

    invoke-direct {v2, p0}, Lorg/telegram/ui/tools/e/a$a;-><init>(Lorg/telegram/ui/tools/e/a;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    const/4 v2, 0x2

    const v3, 0x7f0200ea

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v2, 0x7f02011d

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v12, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/e/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x31

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v7, p0, Lorg/telegram/ui/tools/e/a;->fragmentView:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/e/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v2, -0x282829

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-static {v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/e/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/e/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/tools/e/a;->o:Landroid/widget/ImageButton;

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a;->o:Landroid/widget/ImageButton;

    const v2, 0x7f020086

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a;->o:Landroid/widget/ImageButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a;->o:Landroid/widget/ImageButton;

    const/4 v2, 0x3

    invoke-static {v0, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a;->o:Landroid/widget/ImageButton;

    new-instance v2, Lorg/telegram/ui/tools/e/a$b;

    invoke-direct {v2, p0}, Lorg/telegram/ui/tools/e/a$b;-><init>(Lorg/telegram/ui/tools/e/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/e/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/tools/e/a;->f:Landroid/widget/ImageButton;

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a;->f:Landroid/widget/ImageButton;

    const v2, 0x7f0200d0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a;->f:Landroid/widget/ImageButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v9, p0, Lorg/telegram/ui/tools/e/a;->f:Landroid/widget/ImageButton;

    const/4 v2, 0x3

    const/16 v3, 0xa

    move v1, v0

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a;->f:Landroid/widget/ImageButton;

    new-instance v2, Lorg/telegram/ui/tools/e/a$c;

    invoke-direct {v2, p0}, Lorg/telegram/ui/tools/e/a$c;-><init>(Lorg/telegram/ui/tools/e/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Landroid/widget/Button;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/e/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lorg/telegram/ui/tools/e/a;->a:I

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 v2, 0x3

    const/16 v3, 0xa

    move v1, v0

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/tools/e/a$d;

    invoke-direct {v1, p0, v9}, Lorg/telegram/ui/tools/e/a$d;-><init>(Lorg/telegram/ui/tools/e/a;Landroid/widget/Button;)V

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Landroid/widget/Button;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/e/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lorg/telegram/ui/tools/e/a;->m:I

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 v2, 0x3

    const/16 v3, 0xa

    move v1, v0

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/tools/e/a$e;

    invoke-direct {v0, p0, v9}, Lorg/telegram/ui/tools/e/a$e;-><init>(Lorg/telegram/ui/tools/e/a;Landroid/widget/Button;)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/e/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, -0x282c2d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-static {v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/e/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lorg/telegram/ui/tools/e/a;->n:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    const/16 v2, 0x46

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    new-instance v2, Lorg/telegram/ui/tools/e/a$f;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/tools/e/a$f;-><init>(Lorg/telegram/ui/tools/e/a;Landroid/widget/SeekBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const/16 v2, 0xaa

    invoke-static {v2, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/e/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/tools/e/a;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a;->k:Landroid/widget/TextView;

    const-string/jumbo v2, "12"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a;->k:Landroid/widget/TextView;

    invoke-static {v10, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/tools/e/a$g;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/e/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/tools/e/a$g;-><init>(Lorg/telegram/ui/tools/e/a;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/e/a;->e:Lorg/telegram/ui/tools/e/a$g;

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->e:Lorg/telegram/ui/tools/e/a$g;

    iget v1, p0, Lorg/telegram/ui/tools/e/a;->a:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/e/a$g;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->e:Lorg/telegram/ui/tools/e/a$g;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v11, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/e/a;->j:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->j:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/tools/e/a;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->j:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/tools/e/a;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object v7

    :cond_0
    new-instance v0, Lorg/telegram/ui/tools/e/a$h;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/e/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/tools/e/a$h;-><init>(Lorg/telegram/ui/tools/e/a;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/e/a;->h:Lorg/telegram/ui/tools/e/a$h;

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->h:Lorg/telegram/ui/tools/e/a$h;

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/e/a$h;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->h:Lorg/telegram/ui/tools/e/a$h;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/e/a$h;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a;->h:Lorg/telegram/ui/tools/e/a$h;

    const/high16 v1, -0x40000000    # -2.0f

    invoke-static {v10, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onFragmentCreate()Z
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/tools/e/a;->swipeBackEnabled:Z

    const/4 v0, 0x1

    return v0
.end method
