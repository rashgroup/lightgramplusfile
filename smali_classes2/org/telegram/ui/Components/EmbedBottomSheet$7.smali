.class Lorg/telegram/ui/Components/EmbedBottomSheet$7;
.super Ljava/lang/Object;
.source "EmbedBottomSheet.java"

# interfaces
.implements Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmbedBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkInlinePermissons()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "AppName"

    const v3, 0x7f080086

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "PermissionDrawAboveOtherApps"

    const v3, 0x7f08042d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "PermissionOpenSettings"

    const v3, 0x7f080433

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/EmbedBottomSheet$7$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/EmbedBottomSheet$7$3;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet$7;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0
.end method

.method public getTextureViewContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3700(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    return-object v0
.end method

.method public onInitFailed()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getControlsView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v3}, Lorg/telegram/ui/Components/WebPlayerView;->loadVideo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/String;Z)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "Referer"

    const-string/jumbo v2, "http://youtube.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->embedUrl:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onInlineSurfaceTextureReady()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->isInline()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->dismissInternal()V

    :cond_0
    return-void
.end method

.method public onPlayStateChanged(Lorg/telegram/ui/Components/WebPlayerView;Z)V
    .locals 2

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

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

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

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
    .locals 0

    return-void
.end method

.method public onSwitchInlineMode(Landroid/view/View;ZFIZ)Landroid/view/TextureView;
    .locals 10

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    new-instance v1, Lorg/telegram/ui/Components/PipVideoView;

    invoke-direct {v1}, Lorg/telegram/ui/Components/PipVideoView;-><init>()V

    # setter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->pipVideoView:Lorg/telegram/ui/Components/PipVideoView;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$002(Lorg/telegram/ui/Components/EmbedBottomSheet;Lorg/telegram/ui/Components/PipVideoView;)Lorg/telegram/ui/Components/PipVideoView;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->pipVideoView:Lorg/telegram/ui/Components/PipVideoView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/PipVideoView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/PipVideoView;->show(Landroid/app/Activity;Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/view/View;FI)Landroid/view/TextureView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p5, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->animationInProgress:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3002(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getAspectRatioView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3100(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3100(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # invokes: Lorg/telegram/ui/Components/EmbedBottomSheet;->getLeftInset()I
    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3200(Lorg/telegram/ui/Components/EmbedBottomSheet;)I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3100(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/16 v3, 0xa

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    const-string/jumbo v5, "scaleX"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "scaleY"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "translationX"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I
    invoke-static {v8}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3100(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v8

    const/4 v9, 0x0

    aget v8, v8, v9

    int-to-float v8, v8

    aput v8, v6, v7

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "translationY"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I
    invoke-static {v8}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3100(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v8

    const/4 v9, 0x1

    aget v8, v8, v9

    int-to-float v8, v8

    aput v8, v6, v7

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x4

    const-string/jumbo v4, "scaleX"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x5

    const-string/jumbo v4, "scaleY"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x6

    const-string/jumbo v4, "translationX"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I
    invoke-static {v7}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3100(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v7

    const/4 v8, 0x0

    aget v7, v7, v8

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x7

    const-string/jumbo v4, "translationY"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I
    invoke-static {v7}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3100(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v7

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v1

    const/16 v0, 0x8

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v1

    const-string/jumbo v4, "translationY"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3500(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x33

    aput v7, v5, v6

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmbedBottomSheet$7$2;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet$7;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3600(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_1
.end method

.method public onSwitchToFullscreen(Landroid/view/View;ZFIZ)Landroid/view/TextureView;
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WebPlayerView;->getAspectRatioView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # setter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->wasInLandscape:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1202(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # setter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenedByButton:Z
    invoke-static {v0, p5}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1302(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    # setter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->prevOrientation:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1502(Lorg/telegram/ui/Components/EmbedBottomSheet;I)I

    if-eqz p5, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1600(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # setter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenedByButton:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1302(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1700(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->prevOrientation:I
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1500(Lorg/telegram/ui/Components/EmbedBottomSheet;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onVideoSizeChanged(FI)V
    .locals 0

    return-void
.end method

.method public prepareToSwitchInlineMode(ZLjava/lang/Runnable;FZ)V
    .locals 12

    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->prevOrientation:I
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1500(Lorg/telegram/ui/Components/EmbedBottomSheet;)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->prevOrientation:I
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1500(Lorg/telegram/ui/Components/EmbedBottomSheet;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    if-eqz p4, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WebPlayerView;->getControlsView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {p3}, Lorg/telegram/ui/Components/PipVideoView;->getPipRect(F)Lorg/telegram/ui/Components/Rect;

    move-result-object v3

    iget v4, v3, Lorg/telegram/ui/Components/Rect;->width:F

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_2

    iget v5, v3, Lorg/telegram/ui/Components/Rect;->y:F

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v3, Lorg/telegram/ui/Components/Rect;->y:F

    :cond_2
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/16 v6, 0xc

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    const-string/jumbo v8, "scaleX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v4, v9, v10

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v4, v9, v10

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "translationX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    iget v11, v3, Lorg/telegram/ui/Components/Rect;->x:F

    aput v11, v9, v10

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "translationY"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    iget v11, v3, Lorg/telegram/ui/Components/Rect;->y:F

    aput v11, v9, v10

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x4

    const-string/jumbo v7, "scaleX"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v4, v8, v9

    invoke-static {v0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x5

    const-string/jumbo v7, "scaleY"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v4, v8, v9

    invoke-static {v0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x6

    const-string/jumbo v4, "translationX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget v9, v3, Lorg/telegram/ui/Components/Rect;->x:F

    aput v9, v7, v8

    invoke-static {v0, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x7

    const-string/jumbo v4, "translationY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget v3, v3, Lorg/telegram/ui/Components/Rect;->y:F

    aput v3, v7, v8

    invoke-static {v0, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v6, v2

    const/16 v0, 0x8

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v2

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;
    invoke-static {v8}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v0

    const/16 v0, 0x9

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v0

    const/16 v0, 0xa

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v0

    const/16 v0, 0xb

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v7, 0x0

    aput v7, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7$1;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Components/EmbedBottomSheet$7$1;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet$7;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->dismissInternal()V

    goto :goto_1

    :cond_6
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/BringAppForegroundService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_7
    if-eqz p4, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->onShowListener:Landroid/content/DialogInterface$OnShowListener;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2500(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-static {p3}, Lorg/telegram/ui/Components/PipVideoView;->getPipRect(F)Lorg/telegram/ui/Components/Rect;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/Components/Rect;->width:F

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_8

    iget v4, v0, Lorg/telegram/ui/Components/Rect;->y:F

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Lorg/telegram/ui/Components/Rect;->y:F

    :cond_8
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    iget v4, v0, Lorg/telegram/ui/Components/Rect;->x:F

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget v4, v0, Lorg/telegram/ui/Components/Rect;->y:F

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTranslationY(F)V

    invoke-virtual {v1, v3}, Landroid/view/TextureView;->setScaleX(F)V

    invoke-virtual {v1, v3}, Landroid/view/TextureView;->setScaleY(F)V

    iget v2, v0, Lorg/telegram/ui/Components/Rect;->x:F

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setTranslationX(F)V

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->y:F

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setTranslationY(F)V

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->setShowWithoutAnimation(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->show()V

    if-eqz p4, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    const/4 v1, 0x4

    # setter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->waitingForDraw:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2602(Lorg/telegram/ui/Components/EmbedBottomSheet;I)I

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2700(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->pipVideoView:Lorg/telegram/ui/Components/PipVideoView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/PipVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PipVideoView;->close()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->pipVideoView:Lorg/telegram/ui/Components/PipVideoView;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$002(Lorg/telegram/ui/Components/EmbedBottomSheet;Lorg/telegram/ui/Components/PipVideoView;)Lorg/telegram/ui/Components/PipVideoView;

    goto :goto_2
.end method
