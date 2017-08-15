.class public Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;
.super Ljava/lang/Object;
.source "DialogsActivityF.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DialogsActivityF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogsOnTouch"
.end annotation


# static fields
.field private static final MIN_DISTANCE_HIGH:I = 0x28

.field private static final MIN_DISTANCE_HIGH_Y:I = 0x3c


# instance fields
.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private downX:F

.field private downY:F

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivityF;

.field private upX:F

.field private upY:F

.field private vDPI:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/DialogsActivityF;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->displayMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->vDPI:F

    iget v0, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->vDPI:F

    # setter for: Lorg/telegram/ui/DialogsActivityF;->DvDPI:F
    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivityF;->access$3202(Lorg/telegram/ui/DialogsActivityF;F)F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/high16 v8, 0x42700000    # 60.0f

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v6, 0x42200000    # 40.0f

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->vDPI:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    # setter for: Lorg/telegram/ui/DialogsActivityF;->touchPositionDP:F
    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivityF;->access$3302(Lorg/telegram/ui/DialogsActivityF;F)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->vDPI:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->downX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->vDPI:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->downY:F

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->touchPositionDP:F
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivityF;->access$3300(Lorg/telegram/ui/DialogsActivityF;)F

    move-result v1

    cmpl-float v1, v1, v7

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivityF;->access$3400(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    :cond_1
    instance-of v0, p1, Landroid/widget/LinearLayout;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->vDPI:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->upX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->vDPI:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->upY:F

    iget v1, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->downX:F

    iget v2, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->upX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->downY:F

    iget v3, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->upY:F

    sub-float/2addr v2, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v8

    if-gez v3, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->vDPI:F

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->downX:F

    cmpg-float v3, v1, v5

    if-gez v3, :cond_3

    sget v3, Lorg/telegram/ui/DialogsActivityF;->slected_tab:I

    if-ltz v3, :cond_3

    sget v3, Lorg/telegram/ui/DialogsActivityF;->slected_tab:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lorg/telegram/ui/DialogsActivityF;->slected_tab:I

    sget v3, Lorg/telegram/ui/DialogsActivityF;->slected_tab:I

    if-gez v3, :cond_2

    sput v0, Lorg/telegram/ui/DialogsActivityF;->slected_tab:I

    :cond_2
    sget-object v3, Lorg/telegram/ui/DialogsActivityF;->tabHost:Landroid/support/design/widget/TabLayout;

    sget v4, Lorg/telegram/ui/DialogsActivityF;->slected_tab:I

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    :cond_3
    cmpl-float v3, v1, v5

    if-lez v3, :cond_5

    sget v3, Lorg/telegram/ui/DialogsActivityF;->slected_tab:I

    const/4 v4, 0x7

    if-ge v3, v4, :cond_5

    sget v3, Lorg/telegram/ui/DialogsActivityF;->slected_tab:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lorg/telegram/ui/DialogsActivityF;->slected_tab:I

    sget v3, Lorg/telegram/ui/DialogsActivityF;->slected_tab:I

    const/4 v4, 0x7

    if-lt v3, v4, :cond_4

    const/4 v3, 0x6

    sput v3, Lorg/telegram/ui/DialogsActivityF;->slected_tab:I

    :cond_4
    sget-object v3, Lorg/telegram/ui/DialogsActivityF;->tabHost:Landroid/support/design/widget/TabLayout;

    sget v4, Lorg/telegram/ui/DialogsActivityF;->slected_tab:I

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    :cond_5
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v8

    if-gez v1, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->vDPI:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->downX:F

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->touchPositionDP:F
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivityF;->access$3300(Lorg/telegram/ui/DialogsActivityF;)F

    move-result v1

    cmpl-float v1, v1, v7

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$DialogsOnTouch;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivityF;->access$3500(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
