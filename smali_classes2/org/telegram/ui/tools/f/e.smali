.class public Lorg/telegram/ui/tools/f/e;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SpecialSelectActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/f/e$e;,
        Lorg/telegram/ui/tools/f/e$d;,
        Lorg/telegram/ui/tools/f/e$c;,
        Lorg/telegram/ui/tools/f/e$b;,
        Lorg/telegram/ui/tools/f/e$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/ChipSpan;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/CharSequence;

.field private e:I

.field private f:Landroid/widget/TextView;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lorg/telegram/ui/Components/LetterSectionsListView;

.field private l:Lorg/telegram/ui/Adapters/ContactsAdapter1;

.field private m:I

.field private n:Lorg/telegram/ui/Adapters/SearchAdapter1;

.field private o:Z

.field private p:Z

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/ui/Components/ChipSpan;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lorg/telegram/ui/tools/f/e;->m:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/tools/f/e;->e:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/e;->q:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/e;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/e;->a:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/f/e;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/f/e;->c:I

    return p1
.end method

.method static synthetic a(Lorg/telegram/ui/tools/f/e;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/f/e;->d:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private a(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Components/ChipSpan;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f040037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f1000e0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v2, v5, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v1, v5, v5, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v0, ""

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/telegram/ui/Components/ChipSpan;

    invoke-direct {v3, v1, v6}, Lorg/telegram/ui/Components/ChipSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->q:Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/ImageSpan;

    const-string/jumbo v4, "<<"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v0, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-object v3
.end method

.method static synthetic a(Lorg/telegram/ui/tools/f/e;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Components/ChipSpan;
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/f/e;->a(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Components/ChipSpan;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->k:Lorg/telegram/ui/Components/LetterSectionsListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->k:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LetterSectionsListView;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->k:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v3, :cond_0

    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/f/e;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/f/e;->g:Z

    return v0
.end method

.method static synthetic a(Lorg/telegram/ui/tools/f/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/tools/f/e;->p:Z

    return p1
.end method

.method static synthetic b(Lorg/telegram/ui/tools/f/e;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lorg/telegram/ui/tools/f/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/tools/f/e;->o:Z

    return p1
.end method

.method static synthetic c(Lorg/telegram/ui/tools/f/e;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic c(Lorg/telegram/ui/tools/f/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/tools/f/e;->g:Z

    return p1
.end method

.method static synthetic d(Lorg/telegram/ui/tools/f/e;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/f/e;->c:I

    return v0
.end method

.method static synthetic e(Lorg/telegram/ui/tools/f/e;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/f/e;->p:Z

    return v0
.end method

.method static synthetic f(Lorg/telegram/ui/tools/f/e;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/f/e;->o:Z

    return v0
.end method

.method static synthetic g(Lorg/telegram/ui/tools/f/e;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lorg/telegram/ui/tools/f/e;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->q:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic i(Lorg/telegram/ui/tools/f/e;)Lorg/telegram/ui/Components/LetterSectionsListView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->k:Lorg/telegram/ui/Components/LetterSectionsListView;

    return-object v0
.end method

.method static synthetic j(Lorg/telegram/ui/tools/f/e;)Lorg/telegram/ui/Adapters/SearchAdapter1;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->n:Lorg/telegram/ui/Adapters/SearchAdapter1;

    return-object v0
.end method

.method static synthetic k(Lorg/telegram/ui/tools/f/e;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lorg/telegram/ui/tools/f/e;)Lorg/telegram/ui/Adapters/ContactsAdapter1;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->l:Lorg/telegram/ui/Adapters/ContactsAdapter1;

    return-object v0
.end method

.method static synthetic m(Lorg/telegram/ui/tools/f/e;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/f/e;->m:I

    return v0
.end method

.method static synthetic n(Lorg/telegram/ui/tools/f/e;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/f/e;->e:I

    return v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/tools/f/e;->p:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/tools/f/e;->o:Z

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-boolean v0, p0, Lorg/telegram/ui/tools/f/e;->h:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/tools/f/e;->i:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "AlwaysAllow"

    const v2, 0x7f080074

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/tools/f/e$a;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/f/e$a;-><init>(Lorg/telegram/ui/tools/f/e;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f02011d

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapter1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Adapters/SearchAdapter1;-><init>(Landroid/content/Context;Ljava/util/HashMap;ZZZZ)V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/e;->n:Lorg/telegram/ui/Adapters/SearchAdapter1;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->n:Lorg/telegram/ui/Adapters/SearchAdapter1;

    iget-object v1, p0, Lorg/telegram/ui/tools/f/e;->q:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapter1;->setCheckedMap(Ljava/util/HashMap;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->n:Lorg/telegram/ui/Adapters/SearchAdapter1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapter1;->setUseUserCell(Z)V

    new-instance v0, Lorg/telegram/ui/Adapters/ContactsAdapter1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/ContactsAdapter1;-><init>(Landroid/content/Context;IZLjava/util/HashMap;Z)V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/e;->l:Lorg/telegram/ui/Adapters/ContactsAdapter1;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->l:Lorg/telegram/ui/Adapters/ContactsAdapter1;

    iget-object v1, p0, Lorg/telegram/ui/tools/f/e;->q:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/ContactsAdapter1;->setCheckedMap(Ljava/util/HashMap;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/e;->fragmentView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->fragmentView:Landroid/view/View;

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    const v1, 0xa00b0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinimumHeight(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    const v1, 0x10000006

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    :goto_1
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    iget-object v9, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lorg/telegram/ui/tools/f/e;->h:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/telegram/ui/tools/f/e;->i:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    const-string/jumbo v1, "AlwaysAllowPlaceholder"

    const v2, 0x7f080075

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/tools/f/e$b;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/f/e$b;-><init>(Lorg/telegram/ui/tools/f/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/tools/f/e$c;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/f/e$c;-><init>(Lorg/telegram/ui/tools/f/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/tools/f/e;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/tools/f/e;->f:Landroid/widget/TextView;

    const v2, -0x7f7f80

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/f/e;->f:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lorg/telegram/ui/tools/f/e;->f:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/f/e;->f:Landroid/widget/TextView;

    const-string/jumbo v2, "NoContacts"

    const v3, 0x7f08034a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/f/e;->f:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/LetterSectionsListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/tools/f/e;->k:Lorg/telegram/ui/Components/LetterSectionsListView;

    iget-object v1, p0, Lorg/telegram/ui/tools/f/e;->k:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/LetterSectionsListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->k:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->k:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->k:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setDividerHeight(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->k:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->k:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->k:Lorg/telegram/ui/Components/LetterSectionsListView;

    iget-object v1, p0, Lorg/telegram/ui/tools/f/e;->l:Lorg/telegram/ui/Adapters/ContactsAdapter1;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->k:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollAlwaysVisible(Z)V

    iget-object v1, p0, Lorg/telegram/ui/tools/f/e;->k:Lorg/telegram/ui/Components/LetterSectionsListView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollbarPosition(I)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->k:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->k:Lorg/telegram/ui/Components/LetterSectionsListView;

    new-instance v1, Lorg/telegram/ui/tools/f/e$d;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/f/e$d;-><init>(Lorg/telegram/ui/tools/f/e;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->k:Lorg/telegram/ui/Components/LetterSectionsListView;

    new-instance v1, Lorg/telegram/ui/tools/f/e$e;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/f/e$e;-><init>(Lorg/telegram/ui/tools/f/e;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->fragmentView:Landroid/view/View;

    return-object v0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "AlwaysShareWithTitle"

    const v2, 0x7f080078

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/tools/f/e;->j:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "SpecialContacts"

    const v2, 0x7f0807da

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/tools/f/e;->i:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "NeverAllow"

    const v2, 0x7f080330

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "NeverShareWithTitle"

    const v2, 0x7f080334

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x3

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    const-string/jumbo v1, "AlwaysShareWithPlaceholder"

    const v2, 0x7f080077

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_9
    iget-boolean v0, p0, Lorg/telegram/ui/tools/f/e;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/tools/f/e;->i:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    const-string/jumbo v1, "NeverAllowPlaceholder"

    const v2, 0x7f080331

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->r:Landroid/widget/EditText;

    const-string/jumbo v1, "NeverShareWithPlaceholder"

    const v2, 0x7f080333

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_b
    const/4 v0, 0x2

    goto/16 :goto_3
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->l:Lorg/telegram/ui/Adapters/ContactsAdapter1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e;->l:Lorg/telegram/ui/Adapters/ContactsAdapter1;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/ContactsAdapter1;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v0, :cond_3

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_2

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    :cond_2
    invoke-direct {p0, v0}, Lorg/telegram/ui/tools/f/e;->a(I)V

    goto :goto_0

    :cond_3
    sget v0, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/f/e;->removeSelfFromStack()V

    goto :goto_0
.end method

.method public onFragmentCreate()Z
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    return-void
.end method
