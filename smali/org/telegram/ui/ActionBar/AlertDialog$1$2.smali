.class Lorg/telegram/ui/ActionBar/AlertDialog$1$2;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/AlertDialog$1;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ActionBar/AlertDialog$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog$1;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1$2;->this$1:Lorg/telegram/ui/ActionBar/AlertDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1$2;->this$1:Lorg/telegram/ui/ActionBar/AlertDialog$1;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1$2;->this$1:Lorg/telegram/ui/ActionBar/AlertDialog$1;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    # getter for: Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1$2;->this$1:Lorg/telegram/ui/ActionBar/AlertDialog$1;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    # getter for: Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1$2;->this$1:Lorg/telegram/ui/ActionBar/AlertDialog$1;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    # getter for: Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    if-le v0, v4, :cond_1

    move v0, v1

    :goto_0
    # invokes: Lorg/telegram/ui/ActionBar/AlertDialog;->runShadowAnimation(IZ)V
    invoke-static {v3, v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1400(Lorg/telegram/ui/ActionBar/AlertDialog;IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1$2;->this$1:Lorg/telegram/ui/ActionBar/AlertDialog$1;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1$2;->this$1:Lorg/telegram/ui/ActionBar/AlertDialog$1;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    # getter for: Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$000(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1$2;->this$1:Lorg/telegram/ui/ActionBar/AlertDialog$1;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    # getter for: Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1$2;->this$1:Lorg/telegram/ui/ActionBar/AlertDialog$1;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    # getter for: Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1$2;->this$1:Lorg/telegram/ui/ActionBar/AlertDialog$1;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    # getter for: Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    if-ge v3, v4, :cond_0

    move v2, v1

    :cond_0
    # invokes: Lorg/telegram/ui/ActionBar/AlertDialog;->runShadowAnimation(IZ)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1400(Lorg/telegram/ui/ActionBar/AlertDialog;IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1$2;->this$1:Lorg/telegram/ui/ActionBar/AlertDialog$1;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    # getter for: Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->invalidate()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method
