.class public abstract Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;
.super Landroid/view/View;
.source "MonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$b;,
        Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;
    }
.end annotation


# static fields
.field protected static a:I

.field protected static b:I

.field protected static c:I

.field protected static d:I

.field protected static e:I

.field protected static f:I

.field protected static g:I

.field protected static h:I

.field protected static i:F


# instance fields
.field protected A:I

.field protected B:I

.field protected C:I

.field protected D:I

.field protected final E:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

.field protected F:I

.field protected G:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$b;

.field protected H:I

.field protected I:I

.field protected J:I

.field protected K:I

.field protected L:I

.field protected M:I

.field protected N:I

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private final Q:Ljava/lang/StringBuilder;

.field private final R:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

.field private final S:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;

.field private T:Z

.field private U:I

.field protected j:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

.field protected k:I

.field protected l:Landroid/graphics/Paint;

.field protected m:Landroid/graphics/Paint;

.field protected n:Landroid/graphics/Paint;

.field protected o:Landroid/graphics/Paint;

.field protected p:I

.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:I

.field protected w:Z

.field protected x:I

.field protected y:I

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    sput v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->a:I

    const/16 v0, 0xa

    sput v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->b:I

    const/4 v0, 0x1

    sput v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->c:I

    const/4 v0, 0x0

    sput v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->i:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;)V
    .locals 6

    const v5, 0x7f0f0075

    const/4 v4, 0x7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->k:I

    iput v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->p:I

    iput v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->q:I

    iput v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->r:I

    sget v2, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->a:I

    iput v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->v:I

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->w:Z

    iput v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->x:I

    iput v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->y:I

    iput v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->z:I

    iput v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->A:I

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->A:I

    iput v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->B:I

    iput v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->C:I

    iput v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->D:I

    const/4 v2, 0x6

    iput v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->F:I

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->U:I

    iput-object p3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->j:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-direct {v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->E:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    new-instance v3, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-direct {v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->R:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    const v3, 0x7f080883

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->O:Ljava/lang/String;

    const v3, 0x7f08088d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->P:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->j:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->j:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-interface {v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_1

    const v0, 0x7f0f0065

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->H:I

    const v0, 0x7f0f005f

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->J:I

    const v0, 0x7f0f0061

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->M:I

    const v0, 0x7f0f0063

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->L:I

    :goto_0
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->I:I

    const v0, 0x7f0f0051

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->K:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->N:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->Q:Ljava/lang/StringBuilder;

    const v0, 0x7f0b0029

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->d:I

    const v0, 0x7f0b0036

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->e:I

    const v0, 0x7f0b0035

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->f:I

    const v0, 0x7f0b0037

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->g:I

    const v0, 0x7f0b0028

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->h:I

    const v0, 0x7f0b0025

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->getMonthHeaderSize()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->v:I

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->getMonthViewTouchHelper()Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->S:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->S:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    iput-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->T:Z

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->a()V

    return-void

    :cond_1
    const v0, 0x7f0f0064

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->H:I

    const v0, 0x7f0f005e

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->J:I

    const v0, 0x7f0f0060

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->M:I

    const v0, 0x7f0f0062

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->L:I

    goto/16 :goto_0
.end method

.method private a(I)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->t:I

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->s:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->a(III)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->G:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->G:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$b;

    new-instance v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->t:I

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->s:I

    invoke-direct {v1, v2, v3, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;-><init>(III)V

    invoke-interface {v0, p0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->S:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->sendEventForVirtualView(II)Z

    goto :goto_0
.end method

.method static synthetic a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->a(I)V

    return-void
.end method

.method private a(ILorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;)Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->t:I

    invoke-virtual {p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->s:I

    invoke-virtual {p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->e()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(III)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->j:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-interface {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->e()[Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v5

    if-ge p1, v5, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    invoke-virtual {v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v5

    if-le p1, v5, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c()I

    move-result v5

    if-lt p2, v5, :cond_0

    invoke-virtual {v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c()I

    move-result v5

    if-gt p2, v5, :cond_2

    invoke-virtual {v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->e()I

    move-result v5

    if-lt p3, v5, :cond_0

    invoke-virtual {v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->e()I

    move-result v4

    if-gt p3, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private d(III)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->j:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->j:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-interface {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->b()Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v3

    if-ge p1, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v3

    if-gt p1, v3, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c()I

    move-result v3

    if-ge p2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c()I

    move-result v3

    if-gt p2, v3, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->e()I

    move-result v2

    if-ge p3, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private e()I
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->c()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->B:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->A:I

    div-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->B:I

    add-int/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->A:I

    rem-int/2addr v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(III)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->j:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->j:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-interface {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->c()Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v3

    if-le p1, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c()I

    move-result v3

    if-le p2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c()I

    move-result v2

    if-le p3, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getMonthAndYearString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->Q:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->R:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->R:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(FF)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->b(FF)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->B:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :cond_1
    return v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->m:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->m:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->m:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->P:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->m:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->H:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->n:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->n:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->K:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->n:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->o:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->o:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->o:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->J:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->l:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->l:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->l:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->u:I

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->k:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->getMonthHeaderSize()I

    move-result v1

    sget v2, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->f:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->getMonthAndYearString()Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public abstract a(Landroid/graphics/Canvas;IIIIIIIII)V
.end method

.method protected a(III)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->j:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-interface {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->e()[Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->c(III)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->d(III)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->e(III)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;)Z
    .locals 2

    iget v0, p1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->a:I

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->t:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->b:I

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->s:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->c:I

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->B:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->S:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;

    iget v1, p1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->c:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(FF)I
    .locals 4

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->k:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->u:I

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->k:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->getMonthHeaderSize()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    float-to-int v1, v1

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->v:I

    div-int/2addr v1, v2

    int-to-float v2, v0

    sub-float v2, p1, v2

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->A:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->u:I

    sub-int v0, v3, v0

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->k:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float v0, v2, v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->c()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->A:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->F:I

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->requestLayout()V

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->getMonthHeaderSize()I

    move-result v0

    sget v2, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->f:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->u:I

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->k:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->A:I

    mul-int/lit8 v3, v3, 0x2

    div-int v3, v0, v3

    move v0, v1

    :goto_0
    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->A:I

    if-ge v0, v4, :cond_0

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->z:I

    add-int/2addr v4, v0

    iget v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->A:I

    rem-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v5, v3

    iget v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->k:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->E:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->set(II)V

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->E:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->f()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v5

    int-to-float v6, v2

    iget-object v7, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b(III)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->j:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-interface {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->d()[Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v5

    if-lt p1, v5, :cond_0

    invoke-virtual {v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v5

    if-le p1, v5, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c()I

    move-result v5

    if-lt p2, v5, :cond_0

    invoke-virtual {v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c()I

    move-result v5

    if-gt p2, v5, :cond_2

    invoke-virtual {v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->e()I

    move-result v5

    if-lt p3, v5, :cond_0

    invoke-virtual {v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->e()I

    move-result v4

    if-gt p3, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected c()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->U:I

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->z:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->U:I

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->A:I

    add-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->z:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->U:I

    goto :goto_0
.end method

.method protected c(Landroid/graphics/Canvas;)V
    .locals 13

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->v:I

    sget v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->d:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->c:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->getMonthHeaderSize()I

    move-result v1

    add-int v6, v0, v1

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->u:I

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->k:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->A:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float v12, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->c()I

    move-result v0

    const/4 v4, 0x1

    move v11, v0

    :goto_0
    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->B:I

    if-gt v4, v0, :cond_1

    mul-int/lit8 v0, v11, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, v12

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->k:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v5, v0

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->v:I

    sget v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->d:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->c:I

    sub-int/2addr v0, v1

    int-to-float v1, v5

    sub-float/2addr v1, v12

    float-to-int v7, v1

    int-to-float v1, v5

    add-float/2addr v1, v12

    float-to-int v8, v1

    sub-int v9, v6, v0

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->v:I

    add-int v10, v9, v0

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->t:I

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->s:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->a(Landroid/graphics/Canvas;IIIIIIIII)V

    add-int/lit8 v0, v11, 0x1

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->A:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->v:I

    add-int/2addr v6, v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v11, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->S:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a()V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->S:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAccessibilityFocus()Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->S:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->getFocusedVirtualView()I

    move-result v1

    if-ltz v1, :cond_0

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->t:I

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->s:I

    invoke-direct {v0, v2, v3, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;-><init>(III)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->s:I

    return v0
.end method

.method protected getMonthHeaderSize()I
    .locals 1

    sget v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->g:I

    return v0
.end method

.method protected getMonthViewTouchHelper()Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;
    .locals 1

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;

    invoke-direct {v0, p0, p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;Landroid/view/View;)V

    return-object v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->t:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->c(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->v:I

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->F:I

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->getMonthHeaderSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->u:I

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->S:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->invalidateRoot()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->a(FF)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->a(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->T:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method public setDatePickerController(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->j:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    return-void
.end method

.method public setMonthParams(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "month"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "year"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "You must specify month and year for this view"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->setTag(Ljava/lang/Object;)V

    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->v:I

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->v:I

    sget v2, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->b:I

    if-ge v0, v2, :cond_1

    sget v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->b:I

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->v:I

    :cond_1
    const-string/jumbo v0, "selected_day"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "selected_day"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->x:I

    :cond_2
    const-string/jumbo v0, "month"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->s:I

    const-string/jumbo v0, "year"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->t:I

    new-instance v2, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-direct {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;-><init>()V

    iput-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->w:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->y:I

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->R:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->t:I

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->s:I

    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a(III)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->R:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->get(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->U:I

    const-string/jumbo v0, "week_start"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "week_start"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->z:I

    :goto_0
    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->s:I

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->t:I

    invoke-static {v0, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/c;->a(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->B:I

    move v0, v1

    :goto_1
    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->B:I

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->a(ILorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->w:Z

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->y:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iput v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->z:I

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->e()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->F:I

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->S:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->invalidateRoot()V

    return-void
.end method

.method public setOnDayClickListener(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$b;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->G:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$b;

    return-void
.end method

.method public setSelectedDay(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->x:I

    return-void
.end method
