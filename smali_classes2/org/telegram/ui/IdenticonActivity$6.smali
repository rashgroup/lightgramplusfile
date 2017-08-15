.class Lorg/telegram/ui/IdenticonActivity$6;
.super Ljava/lang/Object;
.source "IdenticonActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IdenticonActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IdenticonActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IdenticonActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/IdenticonActivity$6;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity$6;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/IdenticonActivity;->access$700(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity$6;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/IdenticonActivity;->access$800(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-ne v0, v4, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity$6;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lorg/telegram/ui/IdenticonActivity;->access$900(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity$6;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/IdenticonActivity;->access$1300(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/IdenticonActivity$6;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;
    invoke-static {v1}, Lorg/telegram/ui/IdenticonActivity;->access$1000(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/IdenticonActivity$6;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/IdenticonActivity;->access$1100(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity$6;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/ui/IdenticonActivity;->access$1200(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity$6;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lorg/telegram/ui/IdenticonActivity;->access$900(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1
.end method
