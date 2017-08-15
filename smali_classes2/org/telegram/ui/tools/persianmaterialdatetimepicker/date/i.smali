.class public Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;
.super Landroid/widget/ListView;
.source "YearPickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$a;
    }
.end annotation


# instance fields
.field private final a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

.field private b:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$a;

.field private c:I

.field private d:I

.field private e:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-interface {v0, p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$a;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->c:I

    const v1, 0x7f0b0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->d:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->setVerticalFadingEdgeEnabled(Z)V

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->d:I

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->setFadingEdgeLength(I)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->setSelector(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->setDividerHeight(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a()V

    return-void
.end method

.method static synthetic a(Landroid/widget/TextView;)I
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->b(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->e:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;

    return-object p1
.end method

.method static synthetic a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-interface {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->g()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-interface {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->h()I

    move-result v2

    if-gt v0, v2, :cond_0

    const-string/jumbo v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$a;

    const v2, 0x7f040053

    invoke-direct {v1, p0, p1, v2, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$a;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->b:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$a;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->b:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$a;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private static b(Landroid/widget/TextView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->b:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$a;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-interface {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->f()Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->a:I

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-interface {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->g()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a(I)V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->c:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->d:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a(II)V

    return-void
.end method

.method public a(II)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$1;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;II)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getFirstPositionOffset()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-interface {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->j()V

    check-cast p2, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->e:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->e:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->e:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->a(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->e:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->a(Z)V

    invoke-virtual {p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    iput-object p2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->e:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-static {p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->b(Landroid/widget/TextView;)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->a(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->b:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$a;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
