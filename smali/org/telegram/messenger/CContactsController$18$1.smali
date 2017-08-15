.class Lorg/telegram/messenger/CContactsController$18$1;
.super Ljava/lang/Object;
.source "CContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/CContactsController$18;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/CContactsController$18;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/CContactsController$18;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/CContactsController$18$1;->this$1:Lorg/telegram/messenger/CContactsController$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$18$1;->this$1:Lorg/telegram/messenger/CContactsController$18;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$18;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p0, Lorg/telegram/messenger/CContactsController$18$1;->this$1:Lorg/telegram/messenger/CContactsController$18;

    iget-object v2, v2, Lorg/telegram/messenger/CContactsController$18;->this$0:Lorg/telegram/messenger/CContactsController;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    # invokes: Lorg/telegram/messenger/CContactsController;->deleteContactFromPhoneBook(I)V
    invoke-static {v2, v0}, Lorg/telegram/messenger/CContactsController;->access$1500(Lorg/telegram/messenger/CContactsController;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
