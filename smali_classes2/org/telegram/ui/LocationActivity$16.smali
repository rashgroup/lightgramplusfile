.class Lorg/telegram/ui/LocationActivity$16;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "LocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$16;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$16;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$200(Lorg/telegram/ui/LocationActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$16;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->searchWas:Z
    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$700(Lorg/telegram/ui/LocationActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$16;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
