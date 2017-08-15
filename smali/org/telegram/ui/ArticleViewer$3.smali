.class Lorg/telegram/ui/ArticleViewer$3;
.super Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$3;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->onLayout(ZIIII)V

    sub-int v0, p5, p3

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$3;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$3400(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$3;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$3500(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$3;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$3500(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$3;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$3400(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$3;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$3400(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$3;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$3400(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method
