.class Lorg/telegram/ui/WebviewActivity$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WebviewActivity$3;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/WebviewActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WebviewActivity$3;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/WebviewActivity$3$1;->this$1:Lorg/telegram/ui/WebviewActivity$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity$3$1;->this$1:Lorg/telegram/ui/WebviewActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    # getter for: Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/WebviewActivity;->access$700(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/ui/Components/ContextProgressView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    return-void
.end method
