.class Lorg/telegram/ui/ChannelIntroActivity$2;
.super Landroid/view/ViewGroup;
.source "ChannelIntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelIntroActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelIntroActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelIntroActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8

    const v7, 0x3d4ccccd    # 0.05f

    const/4 v6, 0x0

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    if-le p4, p5, :cond_0

    int-to-float v2, v1

    mul-float/2addr v2, v7

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lorg/telegram/ui/ChannelIntroActivity;->access$000(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v4}, Lorg/telegram/ui/ChannelIntroActivity;->access$000(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v5}, Lorg/telegram/ui/ChannelIntroActivity;->access$000(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v6, v2, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    int-to-float v2, v0

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v1

    const v4, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;
    invoke-static {v4}, Lorg/telegram/ui/ChannelIntroActivity;->access$100(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;
    invoke-static {v5}, Lorg/telegram/ui/ChannelIntroActivity;->access$100(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;
    invoke-static {v6}, Lorg/telegram/ui/ChannelIntroActivity;->access$100(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    int-to-float v3, v1

    const v4, 0x3f1c28f6    # 0.61f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;
    invoke-static {v4}, Lorg/telegram/ui/ChannelIntroActivity;->access$300(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;
    invoke-static {v5}, Lorg/telegram/ui/ChannelIntroActivity;->access$300(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;
    invoke-static {v6}, Lorg/telegram/ui/ChannelIntroActivity;->access$300(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    int-to-float v0, v0

    const v2, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    const v2, 0x3e9eb852    # 0.31f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelIntroActivity;->access$200(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/ChannelIntroActivity;->access$200(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;
    invoke-static {v4}, Lorg/telegram/ui/ChannelIntroActivity;->access$200(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    :goto_0
    return-void

    :cond_0
    int-to-float v2, v1

    mul-float/2addr v2, v7

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lorg/telegram/ui/ChannelIntroActivity;->access$000(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v4}, Lorg/telegram/ui/ChannelIntroActivity;->access$000(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v5}, Lorg/telegram/ui/ChannelIntroActivity;->access$000(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v6, v2, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    int-to-float v2, v1

    const v3, 0x3f170a3d    # 0.59f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/ChannelIntroActivity;->access$100(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;
    invoke-static {v4}, Lorg/telegram/ui/ChannelIntroActivity;->access$100(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;
    invoke-static {v5}, Lorg/telegram/ui/ChannelIntroActivity;->access$100(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v6, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    int-to-float v2, v1

    const v3, 0x3f2e147b    # 0.68f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v0, v0

    iget-object v3, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/ChannelIntroActivity;->access$200(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;
    invoke-static {v4}, Lorg/telegram/ui/ChannelIntroActivity;->access$200(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;
    invoke-static {v5}, Lorg/telegram/ui/ChannelIntroActivity;->access$200(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    int-to-float v0, v1

    const v1, 0x3f5c28f6    # 0.86f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/ChannelIntroActivity;->access$300(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelIntroActivity;->access$300(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/ChannelIntroActivity;->access$300(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v6, v0, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10

    const/high16 v9, 0x41c00000    # 24.0f

    const v8, 0x3f19999a    # 0.6f

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelIntroActivity;->access$000(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/ImageView;

    move-result-object v2

    int-to-float v3, v0

    const v4, 0x3ee66666    # 0.45f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    int-to-float v4, v1

    const v5, 0x3f47ae14    # 0.78f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    iget-object v2, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelIntroActivity;->access$100(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    int-to-float v3, v0

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    iget-object v2, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelIntroActivity;->access$200(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    int-to-float v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    iget-object v2, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelIntroActivity;->access$300(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    int-to-float v3, v0

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ChannelIntroActivity$2;->setMeasuredDimension(II)V

    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelIntroActivity;->access$000(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    int-to-float v4, v1

    const v5, 0x3ee147ae    # 0.44f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    iget-object v2, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelIntroActivity;->access$100(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    iget-object v2, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelIntroActivity;->access$200(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    int-to-float v3, v0

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    iget-object v2, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelIntroActivity;->access$300(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    goto :goto_0
.end method
