.class Lorg/telegram/messenger/CContactsController$8$1;
.super Ljava/lang/Object;
.source "CContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/CContactsController$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/CContactsController$8;

.field final synthetic val$isEmpty:Z

.field final synthetic val$usersDict:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/CContactsController$8;Ljava/util/HashMap;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iput-object p2, p0, Lorg/telegram/messenger/CContactsController$8$1;->val$usersDict:Ljava/util/HashMap;

    iput-boolean p3, p0, Lorg/telegram/messenger/CContactsController$8$1;->val$isEmpty:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-wide/16 v4, 0x3e8

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget v0, v0, Lorg/telegram/messenger/CContactsController$8;->val$from:I

    if-ne v0, v8, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    sget v2, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8;->this$0:Lorg/telegram/messenger/CContactsController;

    invoke-virtual {v0, v9, v8}, Lorg/telegram/messenger/CContactsController;->loadContacts(ZZ)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget v0, v0, Lorg/telegram/messenger/CContactsController$8;->val$from:I

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    long-to-int v0, v0

    sput v0, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-object v2, p0, Lorg/telegram/messenger/CContactsController$8$1;->val$usersDict:Ljava/util/HashMap;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8;->this$0:Lorg/telegram/messenger/CContactsController;

    invoke-virtual {v0, v9, v8}, Lorg/telegram/messenger/CContactsController;->loadContacts(ZZ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget v0, v0, Lorg/telegram/messenger/CContactsController$8;->val$from:I

    if-eq v0, v8, :cond_8

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v1, v1, Lorg/telegram/messenger/CContactsController$8;->val$usersArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v11, v8, v8}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v2, v0, Lorg/telegram/messenger/CContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget v0, v0, Lorg/telegram/messenger/CContactsController$8;->val$from:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    move v0, v8

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesStorage;->putContacts(Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/CContactsController$8$1$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/CContactsController$8$1$1;-><init>(Lorg/telegram/messenger/CContactsController$8$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    move v0, v9

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/CContactsController$8$1$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/CContactsController$8$1$2;-><init>(Lorg/telegram/messenger/CContactsController$8$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8;->this$0:Lorg/telegram/messenger/CContactsController;

    # getter for: Lorg/telegram/messenger/CContactsController;->contactsBookLoaded:Z
    invoke-static {v0}, Lorg/telegram/messenger/CContactsController;->access$700(Lorg/telegram/messenger/CContactsController;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v10, v0

    :goto_3
    const-string/jumbo v0, "onnnn"

    const-string/jumbo v1, "02"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v9

    :goto_4
    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_11

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-object v1, p0, Lorg/telegram/messenger/CContactsController$8$1;->val$usersDict:Ljava/util/HashMap;

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v13, "formatUserStatus"

    invoke-static {v13, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, "Online"

    const v14, 0x7f0803ca

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    if-nez v1, :cond_a

    :cond_9
    :goto_5
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_4

    :cond_a
    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-virtual {v2, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v10, :cond_b

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v10, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v8, :cond_c

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_c
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_10

    const-string/jumbo v7, "#"

    move-object v13, v7

    :goto_6
    iget-object v7, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v7, v7, Lorg/telegram/messenger/CContactsController$8;->this$0:Lorg/telegram/messenger/CContactsController;

    # getter for: Lorg/telegram/messenger/CContactsController;->sectionsToReplace:Ljava/util/HashMap;
    invoke-static {v7}, Lorg/telegram/messenger/CContactsController;->access$1100(Lorg/telegram/messenger/CContactsController;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_d

    move-object v13, v7

    :cond_d
    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_e

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-eqz v1, :cond_9

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    goto :goto_6

    :cond_11
    new-instance v0, Lorg/telegram/messenger/CContactsController$8$1$3;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/CContactsController$8$1$3;-><init>(Lorg/telegram/messenger/CContactsController$8$1;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lorg/telegram/messenger/CContactsController$8$1$4;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/CContactsController$8$1$4;-><init>(Lorg/telegram/messenger/CContactsController$8$1;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lorg/telegram/messenger/CContactsController$8$1$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/CContactsController$8$1$5;-><init>(Lorg/telegram/messenger/CContactsController$8$1;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8;->this$0:Lorg/telegram/messenger/CContactsController;

    # getter for: Lorg/telegram/messenger/CContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/CContactsController;->access$800(Lorg/telegram/messenger/CContactsController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-boolean v0, v0, Lorg/telegram/messenger/CContactsController;->contactsLoaded:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8;->this$0:Lorg/telegram/messenger/CContactsController;

    # getter for: Lorg/telegram/messenger/CContactsController;->contactsBookLoaded:Z
    invoke-static {v0}, Lorg/telegram/messenger/CContactsController;->access$700(Lorg/telegram/messenger/CContactsController;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v1, v1, Lorg/telegram/messenger/CContactsController$8;->this$0:Lorg/telegram/messenger/CContactsController;

    # getter for: Lorg/telegram/messenger/CContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/CContactsController;->access$800(Lorg/telegram/messenger/CContactsController;)Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lorg/telegram/messenger/CContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v11, v11, v11}, Lorg/telegram/messenger/CContactsController;->access$900(Lorg/telegram/messenger/CContactsController;Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8;->this$0:Lorg/telegram/messenger/CContactsController;

    # getter for: Lorg/telegram/messenger/CContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/CContactsController;->access$800(Lorg/telegram/messenger/CContactsController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_12
    if-eqz v10, :cond_13

    new-instance v0, Lorg/telegram/messenger/CContactsController$8$1$6;

    invoke-direct {v0, p0, v10}, Lorg/telegram/messenger/CContactsController$8$1$6;-><init>(Lorg/telegram/messenger/CContactsController$8$1;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8;->this$0:Lorg/telegram/messenger/CContactsController;

    iput-boolean v8, v0, Lorg/telegram/messenger/CContactsController;->contactsLoaded:Z

    goto/16 :goto_0

    :cond_14
    move-object v10, v11

    goto/16 :goto_3
.end method
