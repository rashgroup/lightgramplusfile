.class Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkInlinePermissons()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTextureViewContainer()Landroid/view/ViewGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitFailed()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->access$7200(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;)Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->access$7300(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->access$7300(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v3}, Lorg/telegram/ui/Components/WebPlayerView;->loadVideo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/String;Z)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "Referer"

    const-string/jumbo v2, "http://youtube.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->access$7200(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;)Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->access$7100(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onInlineSurfaceTextureReady()V
    .locals 0

    return-void
.end method

.method public onPlayStateChanged(Lorg/telegram/ui/Components/WebPlayerView;Z)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$7700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$7700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$7700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->pause()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # setter for: Lorg/telegram/ui/ArticleViewer;->currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer;->access$7702(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView;

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$7700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ArticleViewer;->currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$7702(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView;

    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSharePressed()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    new-instance v0, Lorg/telegram/ui/Components/ShareAlert;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->access$7100(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->url:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;
    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->access$7100(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->url:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ArticleViewer;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public onSwitchInlineMode(Landroid/view/View;ZFIZ)Landroid/view/TextureView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSwitchToFullscreen(Landroid/view/View;ZFIZ)Landroid/view/TextureView;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$7400(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenTextureView:Landroid/view/TextureView;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$7500(Lorg/telegram/ui/ArticleViewer;)Landroid/view/TextureView;

    move-result-object v1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$7400(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$7400(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->access$7300(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v1

    # setter for: Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$7602(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenTextureView:Landroid/view/TextureView;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$7500(Lorg/telegram/ui/ArticleViewer;)Landroid/view/TextureView;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$7400(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenTextureView:Landroid/view/TextureView;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$7500(Lorg/telegram/ui/ArticleViewer;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$7602(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$7400(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onVideoSizeChanged(FI)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$7400(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    return-void
.end method

.method public prepareToSwitchInlineMode(ZLjava/lang/Runnable;FZ)V
    .locals 0

    return-void
.end method
