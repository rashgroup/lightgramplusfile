.class Lorg/telegram/ui/DeleteContactActivity$C12501$C12491;
.super Ljava/lang/Object;
.source "DeleteContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DeleteContactActivity$C12501;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C12491"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DeleteContactActivity$C12501;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DeleteContactActivity$C12501;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DeleteContactActivity$C12501$C12491;->this$1:Lorg/telegram/ui/DeleteContactActivity$C12501;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DeleteContactActivity$C12501$C12491;->this$1:Lorg/telegram/ui/DeleteContactActivity$C12501;

    iget-object v1, v1, Lorg/telegram/ui/DeleteContactActivity$C12501;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    iget-object v1, v1, Lorg/telegram/ui/DeleteContactActivity;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ContactsController;->deleteContact(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12501$C12491;->this$1:Lorg/telegram/ui/DeleteContactActivity$C12501;

    iget-object v0, v0, Lorg/telegram/ui/DeleteContactActivity$C12501;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DeleteContactActivity;->finishFragment()V

    return-void
.end method
