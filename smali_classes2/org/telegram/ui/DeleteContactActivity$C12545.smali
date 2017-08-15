.class Lorg/telegram/ui/DeleteContactActivity$C12545;
.super Ljava/lang/Object;
.source "DeleteContactActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DeleteContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C12545"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DeleteContactActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DeleteContactActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DeleteContactActivity$C12545;->this$0:Lorg/telegram/ui/DeleteContactActivity;

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
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DeleteContactActivity$C12545;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/DeleteContactActivity;->access$200(Lorg/telegram/ui/DeleteContactActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DeleteContactActivity$C12545;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter1;
    invoke-static {v1}, Lorg/telegram/ui/DeleteContactActivity;->access$1100(Lorg/telegram/ui/DeleteContactActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter1;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/DeleteContactActivity$C12545;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter1;
    invoke-static {v1}, Lorg/telegram/ui/DeleteContactActivity;->access$1100(Lorg/telegram/ui/DeleteContactActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter1;

    move-result-object v1

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter1;->setIsScrolling(Z)V

    :cond_2
    return-void
.end method
