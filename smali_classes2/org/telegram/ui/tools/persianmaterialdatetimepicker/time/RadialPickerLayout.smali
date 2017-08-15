.class public Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;
.super Landroid/widget/FrameLayout;
.source "RadialPickerLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;
    }
.end annotation


# instance fields
.field private A:Landroid/view/accessibility/AccessibilityManager;

.field private B:Landroid/animation/AnimatorSet;

.field private C:Landroid/os/Handler;

.field private final a:I

.field private final b:I

.field private c:I

.field private d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

.field private e:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;

.field private f:Z

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;

.field private m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

.field private n:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

.field private o:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

.field private p:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

.field private q:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

.field private r:Landroid/view/View;

.field private s:[I

.field private t:Z

.field private u:I

.field private v:Z

.field private w:Z

.field private x:I

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->u:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->C:Landroid/os/Handler;

    invoke-virtual {p0, p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->b:I

    iput-boolean v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->v:Z

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;

    invoke-direct {v0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    invoke-direct {v0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    invoke-direct {v0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->p:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->p:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    invoke-direct {v0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->q:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->q:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-direct {v0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->n:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->n:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-direct {v0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->o:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->o:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a()V

    iput v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->t:Z

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->r:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->r:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->r:Landroid/view/View;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->r:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->r:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    const-string/jumbo v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->A:Landroid/view/accessibility/AccessibilityManager;

    iput-boolean v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->f:Z

    return-void
.end method

.method private a(FFZ[Ljava/lang/Boolean;)I
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->p:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->q:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(IZZZ)I
    .locals 7

    const/4 v0, -0x1

    const/16 v2, 0x168

    const/4 v5, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v6

    if-nez p3, :cond_2

    if-ne v6, v5, :cond_2

    move v0, v5

    :goto_1
    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->b(I)I

    move-result v4

    :goto_2
    if-nez v6, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->p:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    const/16 v1, 0x1e

    :goto_3
    invoke-virtual {v0, v4, p2, p4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a(IZZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->invalidate()V

    if-nez v6, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->i:Z

    if-eqz v0, :cond_6

    if-nez v4, :cond_5

    if-eqz p2, :cond_5

    move v0, v2

    :goto_4
    div-int v1, v0, v1

    if-nez v6, :cond_9

    iget-boolean v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->i:Z

    if-eqz v2, :cond_9

    if-nez p2, :cond_9

    if-eqz v0, :cond_9

    add-int/lit8 v0, v1, 0xc

    :goto_5
    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->n:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->setSelection(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->n:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->invalidate()V

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    invoke-static {p1, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->d(II)I

    move-result v4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->q:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    const/4 v1, 0x6

    goto :goto_3

    :cond_5
    if-ne v4, v2, :cond_a

    if-nez p2, :cond_a

    move v0, v3

    goto :goto_4

    :cond_6
    if-nez v4, :cond_a

    move v0, v2

    goto :goto_4

    :cond_7
    if-ne v4, v2, :cond_a

    if-ne v6, v5, :cond_a

    move v0, v3

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->o:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->setSelection(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->o:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->invalidate()V

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_5

    :cond_a
    move v0, v4

    goto :goto_4
.end method

.method static synthetic a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->u:I

    return v0
.end method

.method static synthetic a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->c:I

    return p1
.end method

.method static synthetic a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;IZZZ)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a(IZZZ)I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 7

    const/16 v6, 0x169

    const/4 v2, 0x1

    const/4 v0, 0x0

    new-array v1, v6, [I

    iput-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->s:[I

    const/16 v1, 0x8

    move v4, v0

    move v3, v0

    move v0, v1

    move v1, v2

    :goto_0
    if-ge v4, v6, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->s:[I

    aput v3, v5, v4

    if-ne v1, v0, :cond_2

    add-int/lit8 v1, v3, 0x6

    const/16 v0, 0x168

    if-ne v1, v0, :cond_0

    const/4 v0, 0x7

    :goto_1
    move v3, v1

    move v1, v2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    rem-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_1

    const/16 v0, 0xe

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private a(I)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->i:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    if-gt p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->v:Z

    return p1
.end method

.method private b(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->s:[I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->s:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method static synthetic b(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    return-object v0
.end method

.method private b(II)V
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    invoke-direct {p0, v3, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->c(II)V

    rem-int/lit8 v0, p2, 0xc

    mul-int/lit8 v0, v0, 0x1e

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->p:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    invoke-direct {p0, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a(I)Z

    move-result v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a(IZZ)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->p:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->n:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->setSelection(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->n:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v0, :cond_0

    invoke-direct {p0, v0, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->c(II)V

    mul-int/lit8 v0, p2, 0x6

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->q:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    invoke-virtual {v1, v0, v3, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a(IZZ)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->q:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->o:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->setSelection(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->n:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->invalidate()V

    goto :goto_0
.end method

.method static synthetic c(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->x:I

    return v0
.end method

.method private c(II)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iput p2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->g:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v1, :cond_2

    iput p2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->h:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_3

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->g:I

    rem-int/lit8 v0, v0, 0xc

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->g:I

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->g:I

    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->g:I

    goto :goto_0
.end method

.method private static d(II)I
    .locals 4

    const/16 v2, 0x1e

    div-int v0, p0, v2

    mul-int/2addr v0, v2

    add-int v1, v0, v2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    if-ne p0, v0, :cond_0

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_2
    sub-int v2, p0, v0

    sub-int v3, v1, p0

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->e:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;

    return-object v0
.end method

.method private getCurrentlyShowingValue()I
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->g:I

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->h:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public a(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->b(II)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->b(II)V

    return-void
.end method

.method public a(IZ)V
    .locals 6

    const/16 v0, 0xff

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v3, :cond_0

    const-string/jumbo v0, "RadialPickerLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TimePicker does not support view at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    iput p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->k:I

    if-eqz p2, :cond_4

    if-eq p1, v2, :cond_4

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/ObjectAnimator;

    if-ne p1, v3, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->n:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-virtual {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->p:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->o:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->q:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v5

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->B:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->B:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->B:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->B:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->B:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->B:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->n:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-virtual {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->p:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->o:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->q:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    move v2, v0

    :goto_2
    if-ne p1, v3, :cond_6

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->n:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    int-to-float v3, v2

    invoke-virtual {v1, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->p:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->o:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->q:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->setAlpha(F)V

    goto/16 :goto_0

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method public a(Landroid/content/Context;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;IIZ)V
    .locals 13

    iget-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->f:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "RadialPickerLayout"

    const-string/jumbo v2, "Time has already been initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

    move/from16 v0, p5

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->i:Z

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->A:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->i:Z

    if-eqz v1, :cond_3

    :cond_1
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->j:Z

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;

    iget-boolean v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->j:Z

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->a(Landroid/content/Context;Z)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->invalidate()V

    iget-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->j:Z

    if-nez v1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    const/16 v1, 0xc

    move/from16 v0, p3

    if-ge v0, v1, :cond_4

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, p1, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a(Landroid/content/Context;I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->invalidate()V

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v1, 0xc

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    const/16 v1, 0xc

    new-array v7, v1, [I

    fill-array-data v7, :array_1

    const/16 v1, 0xc

    new-array v8, v1, [I

    fill-array-data v8, :array_2

    const/16 v1, 0xc

    new-array v3, v1, [Ljava/lang/String;

    const/16 v1, 0xc

    new-array v4, v1, [Ljava/lang/String;

    const/16 v1, 0xc

    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move v5, v1

    :goto_3
    const/16 v1, 0xc

    if-ge v5, v1, :cond_6

    if-eqz p5, :cond_5

    const-string/jumbo v1, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget v12, v7, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    const-string/jumbo v1, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget v12, v6, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const-string/jumbo v1, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget v12, v8, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v5

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v1, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget v12, v6, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->n:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    if-eqz p5, :cond_7

    :goto_5
    iget-boolean v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->j:Z

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->a(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->n:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    if-eqz p5, :cond_8

    move/from16 v1, p3

    :goto_6
    invoke-virtual {v3, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->setSelection(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->n:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->invalidate()V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->o:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->j:Z

    const/4 v6, 0x0

    move-object v3, v9

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->a(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->o:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->setSelection(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->o:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->invalidate()V

    const/4 v1, 0x0

    move/from16 v0, p3

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->c(II)V

    const/4 v1, 0x1

    move/from16 v0, p4

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->c(II)V

    rem-int/lit8 v1, p3, 0xc

    mul-int/lit8 v6, v1, 0x1e

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->p:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    iget-boolean v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->j:Z

    const/4 v5, 0x1

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a(I)Z

    move-result v7

    move-object v2, p1

    move/from16 v4, p5

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a(Landroid/content/Context;ZZZIZ)V

    mul-int/lit8 v6, p4, 0x6

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->q:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    iget-boolean v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->j:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a(Landroid/content/Context;ZZZIZ)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->f:Z

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    rem-int/lit8 v1, p3, 0xc

    goto :goto_6

    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method a(Landroid/content/Context;Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->b(Landroid/content/Context;Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->n:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->o:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->p:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->q:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public a(Z)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->w:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->t:Z

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->r:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->i:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x81

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getCurrentItemShowing()I
    .locals 3

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->k:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->k:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "RadialPickerLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current item showing was unfortunately set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->k:I

    goto :goto_0
.end method

.method public getHours()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->g:I

    return v0
.end method

.method public getIsCurrentlyAmOrPm()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->g:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->g:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinutes()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->h:I

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    new-array v4, v1, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    move v1, v2

    :cond_1
    :goto_1
    return v1

    :pswitch_0
    iget-boolean v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->t:Z

    if-eqz v5, :cond_1

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->y:F

    iput v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->z:F

    iput v8, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->c:I

    iput-boolean v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->v:Z

    iput-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->w:Z

    iget-boolean v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->j:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a(FF)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->u:I

    :goto_2
    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->u:I

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->u:I

    if-ne v2, v1, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->c()V

    iput v8, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->x:I

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->C:Landroid/os/Handler;

    new-instance v2, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$1;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;)V

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->b:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iput v8, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->u:I

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->A:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    invoke-direct {p0, v0, v3, v2, v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->x:I

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->x:I

    if-eq v0, v8, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->c()V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->C:Landroid/os/Handler;

    new-instance v2, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$2;

    invoke-direct {v2, p0, v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$2;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->b:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :pswitch_1
    iget-boolean v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->t:Z

    if-nez v5, :cond_5

    const-string/jumbo v0, "RadialPickerLayout"

    const-string/jumbo v2, "Input was disabled, but received ACTION_MOVE."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->z:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->y:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-boolean v7, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->v:Z

    if-nez v7, :cond_6

    iget v7, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    iget v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-lez v5, :cond_0

    :cond_6
    iget v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->u:I

    if-eqz v5, :cond_7

    iget v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->u:I

    if-ne v5, v1, :cond_8

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->C:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a(FF)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->u:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->setAmOrPmPressed(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->invalidate()V

    iput v8, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->u:I

    goto/16 :goto_0

    :cond_8
    iget v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->x:I

    if-eq v5, v8, :cond_0

    iput-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->v:Z

    iget-object v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->C:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v3, v1, v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    if-eq v0, v8, :cond_1

    aget-object v3, v4, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v0, v3, v2, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a(IZZZ)I

    move-result v0

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->c:I

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

    invoke-virtual {v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->c()V

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->c:I

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->e:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v4

    invoke-interface {v3, v4, v0, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;->a(IIZ)V

    goto/16 :goto_1

    :pswitch_2
    iget-boolean v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->t:Z

    if-nez v5, :cond_9

    const-string/jumbo v0, "RadialPickerLayout"

    const-string/jumbo v3, "Input was disabled, but received ACTION_UP."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->e:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;

    const/4 v3, 0x3

    invoke-interface {v0, v3, v1, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;->a(IIZ)V

    goto/16 :goto_1

    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->C:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->w:Z

    iget v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->u:I

    if-eqz v5, :cond_a

    iget v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->u:I

    if-ne v5, v1, :cond_c

    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a(FF)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->setAmOrPmPressed(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->invalidate()V

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->u:I

    if-ne v0, v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->setAmOrPm(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v1

    if-eq v1, v0, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->e:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->u:I

    invoke-interface {v1, v6, v3, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;->a(IIZ)V

    invoke-direct {p0, v6, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->c(II)V

    :cond_b
    iput v8, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->u:I

    goto/16 :goto_0

    :cond_c
    iget v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->x:I

    if-eq v5, v8, :cond_e

    iget-boolean v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->v:Z

    invoke-direct {p0, v0, v3, v5, v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a(FFZ[Ljava/lang/Boolean;)I

    move-result v3

    if-eq v3, v8, :cond_e

    aget-object v0, v4, v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->v:Z

    if-nez v0, :cond_f

    move v0, v1

    :goto_3
    invoke-direct {p0, v3, v4, v0, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a(IZZZ)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v3

    if-nez v3, :cond_d

    iget-boolean v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->i:Z

    if-nez v3, :cond_d

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v3

    if-nez v3, :cond_10

    const/16 v4, 0xc

    if-ne v0, v4, :cond_10

    move v0, v2

    :cond_d
    :goto_4
    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v3

    invoke-direct {p0, v3, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->c(II)V

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->e:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v4

    invoke-interface {v3, v4, v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;->a(IIZ)V

    :cond_e
    iput-boolean v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->v:Z

    goto/16 :goto_1

    :cond_f
    move v0, v2

    goto :goto_3

    :cond_10
    if-ne v3, v1, :cond_d

    const/16 v3, 0xc

    if-eq v0, v3, :cond_d

    add-int/lit8 v0, v0, 0xc

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_2

    move v3, v4

    :goto_1
    if-eqz v3, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getCurrentlyShowingValue()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v5

    if-nez v5, :cond_3

    const/16 v0, 0x1e

    rem-int/lit8 v2, v2, 0xc

    :goto_2
    mul-int/2addr v2, v0

    invoke-static {v2, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->d(II)I

    move-result v2

    div-int v3, v2, v0

    if-nez v5, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->i:Z

    if-eqz v0, :cond_4

    const/16 v2, 0x17

    move v0, v1

    :goto_3
    if-le v3, v2, :cond_6

    :goto_4
    invoke-direct {p0, v5, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->b(II)V

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->e:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;

    invoke-interface {v2, v5, v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;->a(IIZ)V

    move v1, v4

    goto :goto_0

    :cond_2
    const/16 v0, 0x2000

    if-ne p1, v0, :cond_9

    const/4 v0, -0x1

    move v3, v0

    goto :goto_1

    :cond_3
    if-ne v5, v4, :cond_8

    const/4 v0, 0x6

    goto :goto_2

    :cond_4
    const/16 v2, 0xc

    move v0, v4

    goto :goto_3

    :cond_5
    const/16 v2, 0x37

    move v0, v1

    goto :goto_3

    :cond_6
    if-ge v3, v0, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v3

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    move v3, v1

    goto :goto_1
.end method

.method public setAmOrPm(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->setAmOrPm(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->invalidate()V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->c(II)V

    return-void
.end method

.method public setOnValueSelectedListener(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->e:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;

    return-void
.end method
