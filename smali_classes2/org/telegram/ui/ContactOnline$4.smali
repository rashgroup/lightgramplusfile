.class Lorg/telegram/ui/ContactOnline$4;
.super Ljava/lang/Object;
.source "ContactOnline.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactOnline;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContactOnline;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactOnline;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ContactOnline$4;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$4;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/ContactOnline;->access$000(Lorg/telegram/ui/ContactOnline;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$4;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->searchWas:Z
    invoke-static {v0}, Lorg/telegram/ui/ContactOnline;->access$100(Lorg/telegram/ui/ContactOnline;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$4;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-virtual {v0}, Lorg/telegram/ui/ContactOnline;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
