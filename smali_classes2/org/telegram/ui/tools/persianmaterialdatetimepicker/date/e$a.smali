.class public Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "MonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

.field private final b:Landroid/graphics/Rect;

.field private final c:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->b:Landroid/graphics/Rect;

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-direct {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->c:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->getFocusedVirtualView()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    return-void
.end method

.method protected a(ILandroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    iget v0, v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->k:I

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->getMonthHeaderSize()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    iget v2, v2, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->v:I

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    iget v3, v3, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->u:I

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    iget v4, v4, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->k:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    iget v4, v4, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->A:I

    div-int/2addr v3, v4

    add-int/lit8 v4, p1, -0x1

    iget-object v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    invoke-virtual {v5}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->c()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    iget v5, v5, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->A:I

    div-int v5, v4, v5

    iget-object v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    iget v6, v6, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->A:I

    rem-int/2addr v4, v6

    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    mul-int v4, v5, v2

    add-int/2addr v1, v4

    add-int/2addr v3, v0

    add-int/2addr v2, v1

    invoke-virtual {p2, v0, v1, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected b(I)Ljava/lang/CharSequence;
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->c:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    iget v1, v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->t:I

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    iget v2, v2, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->s:I

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a(III)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->c:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    iget v1, v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->x:I

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080888

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getVirtualViewAt(FF)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->a(FF)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    iget v1, v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->B:I

    if-gt v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    invoke-static {v0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;I)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->b(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a(ILandroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->b(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->b:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    iget v0, v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->x:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    :cond_0
    return-void
.end method
