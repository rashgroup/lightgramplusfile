.class Lorg/telegram/ui/ArticleViewer$CheckForLongPress;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field public currentPressCount:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2500(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$500(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress;->this$0:Lorg/telegram/ui/ArticleViewer;

    # setter for: Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z
    invoke-static {v0, v5}, Lorg/telegram/ui/ArticleViewer;->access$2502(Lorg/telegram/ui/ArticleViewer;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$500(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ArticleViewer$WindowView;->performHapticFeedback(I)Z

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const-string/jumbo v3, "Open"

    const v4, 0x7f0803d4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string/jumbo v4, "Copy"

    const v5, 0x7f08018e

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lorg/telegram/ui/ArticleViewer$CheckForLongPress$1;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/ArticleViewer$CheckForLongPress$1;-><init>(Lorg/telegram/ui/ArticleViewer$CheckForLongPress;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer;->showDialog(Landroid/app/Dialog;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->hideActionBar()V
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2700(Lorg/telegram/ui/ArticleViewer;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress;->this$0:Lorg/telegram/ui/ArticleViewer;

    # setter for: Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;
    invoke-static {v0, v6}, Lorg/telegram/ui/ArticleViewer;->access$2602(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/TextPaintUrlSpan;)Lorg/telegram/ui/Components/TextPaintUrlSpan;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress;->this$0:Lorg/telegram/ui/ArticleViewer;

    # setter for: Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Landroid/text/StaticLayout;
    invoke-static {v0, v6}, Lorg/telegram/ui/ArticleViewer;->access$2802(Lorg/telegram/ui/ArticleViewer;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2900(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
