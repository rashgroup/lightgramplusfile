.class Lorg/telegram/ui/SecurityList$4;
.super Ljava/lang/Object;
.source "SecurityList.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecurityList;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecurityList;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecurityList;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    iput-object p2, p0, Lorg/telegram/ui/SecurityList$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x7

    const/high16 v6, 0x42480000    # 50.0f

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    iget-object v2, p0, Lorg/telegram/ui/SecurityList$4;->val$context:Landroid/content/Context;

    iput-object v2, v1, Lorg/telegram/ui/SecurityList;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    iget-object v2, p0, Lorg/telegram/ui/SecurityList$4;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    # setter for: Lorg/telegram/ui/SecurityList;->displayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v1, v2}, Lorg/telegram/ui/SecurityList;->access$002(Lorg/telegram/ui/SecurityList;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    iget-object v2, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->displayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v2}, Lorg/telegram/ui/SecurityList;->access$000(Lorg/telegram/ui/SecurityList;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    # setter for: Lorg/telegram/ui/SecurityList;->vDPI:F
    invoke-static {v1, v2}, Lorg/telegram/ui/SecurityList;->access$102(Lorg/telegram/ui/SecurityList;F)F

    iget-object v1, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->vDPI:F
    invoke-static {v3}, Lorg/telegram/ui/SecurityList;->access$100(Lorg/telegram/ui/SecurityList;)F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    # setter for: Lorg/telegram/ui/SecurityList;->touchPositionDP:F
    invoke-static {v1, v2}, Lorg/telegram/ui/SecurityList;->access$202(Lorg/telegram/ui/SecurityList;F)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->vDPI:F
    invoke-static {v3}, Lorg/telegram/ui/SecurityList;->access$100(Lorg/telegram/ui/SecurityList;)F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    # setter for: Lorg/telegram/ui/SecurityList;->downX:F
    invoke-static {v1, v2}, Lorg/telegram/ui/SecurityList;->access$302(Lorg/telegram/ui/SecurityList;F)F

    iget-object v1, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->vDPI:F
    invoke-static {v3}, Lorg/telegram/ui/SecurityList;->access$100(Lorg/telegram/ui/SecurityList;)F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    # setter for: Lorg/telegram/ui/SecurityList;->downY:F
    invoke-static {v1, v2}, Lorg/telegram/ui/SecurityList;->access$402(Lorg/telegram/ui/SecurityList;F)F

    iget-object v1, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->downX:F
    invoke-static {v1}, Lorg/telegram/ui/SecurityList;->access$300(Lorg/telegram/ui/SecurityList;)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v1}, Lorg/telegram/ui/SecurityList;->access$500(Lorg/telegram/ui/SecurityList;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    :cond_1
    instance-of v0, p1, Landroid/widget/LinearLayout;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->vDPI:F
    invoke-static {v3}, Lorg/telegram/ui/SecurityList;->access$100(Lorg/telegram/ui/SecurityList;)F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    # setter for: Lorg/telegram/ui/SecurityList;->upX:F
    invoke-static {v1, v2}, Lorg/telegram/ui/SecurityList;->access$602(Lorg/telegram/ui/SecurityList;F)F

    iget-object v1, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->vDPI:F
    invoke-static {v3}, Lorg/telegram/ui/SecurityList;->access$100(Lorg/telegram/ui/SecurityList;)F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    # setter for: Lorg/telegram/ui/SecurityList;->upY:F
    invoke-static {v1, v2}, Lorg/telegram/ui/SecurityList;->access$702(Lorg/telegram/ui/SecurityList;F)F

    iget-object v1, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->downX:F
    invoke-static {v1}, Lorg/telegram/ui/SecurityList;->access$300(Lorg/telegram/ui/SecurityList;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->upX:F
    invoke-static {v2}, Lorg/telegram/ui/SecurityList;->access$600(Lorg/telegram/ui/SecurityList;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->downY:F
    invoke-static {v2}, Lorg/telegram/ui/SecurityList;->access$400(Lorg/telegram/ui/SecurityList;)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->upY:F
    invoke-static {v3}, Lorg/telegram/ui/SecurityList;->access$700(Lorg/telegram/ui/SecurityList;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42200000    # 40.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42700000    # 60.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->vDPI:F
    invoke-static {v4}, Lorg/telegram/ui/SecurityList;->access$100(Lorg/telegram/ui/SecurityList;)F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    # setter for: Lorg/telegram/ui/SecurityList;->downX:F
    invoke-static {v2, v3}, Lorg/telegram/ui/SecurityList;->access$302(Lorg/telegram/ui/SecurityList;F)F

    cmpg-float v2, v1, v5

    if-gez v2, :cond_3

    sget v2, Lorg/telegram/ui/SecurityList;->slected_tab:I

    if-ltz v2, :cond_3

    sget v2, Lorg/telegram/ui/SecurityList;->slected_tab:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lorg/telegram/ui/SecurityList;->slected_tab:I

    sget v2, Lorg/telegram/ui/SecurityList;->slected_tab:I

    if-gez v2, :cond_2

    sput v0, Lorg/telegram/ui/SecurityList;->slected_tab:I

    :cond_2
    const-string/jumbo v2, "LOGI"

    sget v3, Lorg/telegram/ui/SecurityList;->slected_tab:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lorg/telegram/ui/SecurityList;->tabHost:Landroid/support/design/widget/TabLayout;

    sget v3, Lorg/telegram/ui/SecurityList;->slected_tab:I

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    :cond_3
    cmpl-float v1, v1, v5

    if-lez v1, :cond_5

    sget v1, Lorg/telegram/ui/SecurityList;->slected_tab:I

    if-ge v1, v7, :cond_5

    sget v1, Lorg/telegram/ui/SecurityList;->slected_tab:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/telegram/ui/SecurityList;->slected_tab:I

    sget v1, Lorg/telegram/ui/SecurityList;->slected_tab:I

    if-lt v1, v7, :cond_4

    const/4 v1, 0x6

    sput v1, Lorg/telegram/ui/SecurityList;->slected_tab:I

    :cond_4
    const-string/jumbo v1, "LOGI"

    sget v2, Lorg/telegram/ui/SecurityList;->slected_tab:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lorg/telegram/ui/SecurityList;->tabHost:Landroid/support/design/widget/TabLayout;

    sget v2, Lorg/telegram/ui/SecurityList;->slected_tab:I

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->downX:F
    invoke-static {v1}, Lorg/telegram/ui/SecurityList;->access$300(Lorg/telegram/ui/SecurityList;)F

    move-result v1

    cmpg-float v1, v1, v6

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SecurityList$4;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v1}, Lorg/telegram/ui/SecurityList;->access$800(Lorg/telegram/ui/SecurityList;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
