.class Lorg/telegram/messenger/CContactsController$18$2;
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

    iput-object p1, p0, Lorg/telegram/messenger/CContactsController$18$2;->this$1:Lorg/telegram/messenger/CContactsController$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$18$2;->this$1:Lorg/telegram/messenger/CContactsController$18;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$18;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, p0, Lorg/telegram/messenger/CContactsController$18$2;->this$1:Lorg/telegram/messenger/CContactsController$18;

    iget-object v1, v1, Lorg/telegram/messenger/CContactsController$18;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v1, v1, Lorg/telegram/messenger/CContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/CContactsController$18$2;->this$1:Lorg/telegram/messenger/CContactsController$18;

    iget-object v2, v2, Lorg/telegram/messenger/CContactsController$18;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v2, v2, Lorg/telegram/messenger/CContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/CContactsController$18$2;->this$1:Lorg/telegram/messenger/CContactsController$18;

    iget-object v1, v1, Lorg/telegram/messenger/CContactsController$18;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v1, v1, Lorg/telegram/messenger/CContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    move v0, v4

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$18$2;->this$1:Lorg/telegram/messenger/CContactsController$18;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$18;->this$0:Lorg/telegram/messenger/CContactsController;

    # invokes: Lorg/telegram/messenger/CContactsController;->buildContactsSectionsArrays(Z)V
    invoke-static {v0, v3}, Lorg/telegram/messenger/CContactsController;->access$1600(Lorg/telegram/messenger/CContactsController;Z)V

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_1
.end method
