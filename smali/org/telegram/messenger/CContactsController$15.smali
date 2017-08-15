.class Lorg/telegram/messenger/CContactsController$15;
.super Ljava/lang/Object;
.source "CContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/CContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/CContactsController;

.field final synthetic val$contactsToDelete:Ljava/util/ArrayList;

.field final synthetic val$newContacts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/CContactsController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/CContactsController$15;->this$0:Lorg/telegram/messenger/CContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/CContactsController$15;->val$newContacts:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/CContactsController$15;->val$contactsToDelete:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$15;->val$newContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$15;->val$newContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-object v3, p0, Lorg/telegram/messenger/CContactsController$15;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v3, v3, Lorg/telegram/messenger/CContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/CContactsController$15;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v3, v3, Lorg/telegram/messenger/CContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/messenger/CContactsController$15;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v3, v3, Lorg/telegram/messenger/CContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$15;->val$contactsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$15;->val$contactsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lorg/telegram/messenger/CContactsController$15;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v1, v1, Lorg/telegram/messenger/CContactsController;->contactsDict:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/CContactsController$15;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/CContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/CContactsController$15;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v1, v1, Lorg/telegram/messenger/CContactsController;->contactsDict:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$15;->val$newContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$15;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/CContactsController$15;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v1, v1, Lorg/telegram/messenger/CContactsController;->contacts:Ljava/util/ArrayList;

    # invokes: Lorg/telegram/messenger/CContactsController;->updateUnregisteredContacts(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/CContactsController;->access$1000(Lorg/telegram/messenger/CContactsController;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$15;->this$0:Lorg/telegram/messenger/CContactsController;

    # invokes: Lorg/telegram/messenger/CContactsController;->performWriteContactsToPhoneBook()V
    invoke-static {v0}, Lorg/telegram/messenger/CContactsController;->access$1200(Lorg/telegram/messenger/CContactsController;)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$15;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/CContactsController$15;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v3, p0, Lorg/telegram/messenger/CContactsController$15;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v3, v3, Lorg/telegram/messenger/CContactsController;->contactsBook:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/CContactsController;->getContactsCopy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/CContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZ)V

    iget-object v1, p0, Lorg/telegram/messenger/CContactsController$15;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$15;->val$newContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    # invokes: Lorg/telegram/messenger/CContactsController;->buildContactsSectionsArrays(Z)V
    invoke-static {v1, v0}, Lorg/telegram/messenger/CContactsController;->access$1600(Lorg/telegram/messenger/CContactsController;Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    :cond_5
    move v0, v2

    goto :goto_2
.end method
