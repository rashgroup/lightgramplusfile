.class public Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;
.super Landroid/webkit/WebView;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchyWebView"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->access$7100(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->allow_scrolling:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$500(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$WindowView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method
