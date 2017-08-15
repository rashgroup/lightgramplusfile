.class Lorg/telegram/ui/PrivacyUsersActivity$3;
.super Ljava/lang/Object;
.source "PrivacyUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PrivacyUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyUsersActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity$3;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$3;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    # getter for: Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$3;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PrivacyUsersActivity$3;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$3;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    # getter for: Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lorg/telegram/ui/PrivacyUsersActivity;->selectedUserId:I
    invoke-static {v3, v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$502(Lorg/telegram/ui/PrivacyUsersActivity;I)I

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/PrivacyUsersActivity$3;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PrivacyUsersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v3, v1, [Ljava/lang/CharSequence;

    const-string/jumbo v4, "Delete"

    const v5, 0x7f0801bb

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    new-instance v2, Lorg/telegram/ui/PrivacyUsersActivity$3$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PrivacyUsersActivity$3$1;-><init>(Lorg/telegram/ui/PrivacyUsersActivity$3;)V

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$3;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/PrivacyUsersActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move v0, v1

    goto :goto_0
.end method
