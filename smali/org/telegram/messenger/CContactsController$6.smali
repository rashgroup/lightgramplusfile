.class Lorg/telegram/messenger/CContactsController$6;
.super Ljava/lang/Object;
.source "CContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/CContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/CContactsController;

.field final synthetic val$contactHashMap:Ljava/util/HashMap;

.field final synthetic val$first:Z

.field final synthetic val$force:Z

.field final synthetic val$request:Z

.field final synthetic val$schedule:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/CContactsController;Ljava/util/HashMap;ZZZZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/CContactsController$6;->this$0:Lorg/telegram/messenger/CContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/CContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    iput-boolean p3, p0, Lorg/telegram/messenger/CContactsController$6;->val$schedule:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/CContactsController$6;->val$request:Z

    iput-boolean p5, p0, Lorg/telegram/messenger/CContactsController$6;->val$first:Z

    iput-boolean p6, p0, Lorg/telegram/messenger/CContactsController$6;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/CContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/CContactsController$Contact;

    const/4 v3, 0x0

    :goto_0
    iget-object v5, v2, Lorg/telegram/messenger/CContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    iget-object v5, v2, Lorg/telegram/messenger/CContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v11, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/CContactsController$6;->val$schedule:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/CContactsController$6;->this$0:Lorg/telegram/messenger/CContactsController;

    # invokes: Lorg/telegram/messenger/CContactsController;->checkContactsInternal()Z
    invoke-static {v2}, Lorg/telegram/messenger/CContactsController;->access$200(Lorg/telegram/messenger/CContactsController;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/CContactsController$6;->this$0:Lorg/telegram/messenger/CContactsController;

    # invokes: Lorg/telegram/messenger/CContactsController;->readContactsFromPhoneBook()Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/messenger/CContactsController;->access$500(Lorg/telegram/messenger/CContactsController;)Ljava/util/HashMap;

    move-result-object v7

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/CContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/CContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/CContactsController$Contact;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/CContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/CContactsController$Contact;

    if-nez v4, :cond_22

    const/4 v5, 0x0

    move v8, v5

    :goto_2
    iget-object v5, v2, Lorg/telegram/messenger/CContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v8, v5, :cond_22

    iget-object v5, v2, Lorg/telegram/messenger/CContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/CContactsController$Contact;

    if-eqz v5, :cond_8

    iget v3, v5, Lorg/telegram/messenger/CContactsController$Contact;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v9, v5

    move-object v10, v3

    :goto_3
    if-eqz v9, :cond_9

    iget-object v3, v2, Lorg/telegram/messenger/CContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v9, Lorg/telegram/messenger/CContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v4, v2, Lorg/telegram/messenger/CContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, v2, Lorg/telegram/messenger/CContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v9, Lorg/telegram/messenger/CContactsController$Contact;->last_name:Ljava/lang/String;

    iget-object v4, v2, Lorg/telegram/messenger/CContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_5
    const/4 v3, 0x1

    move v8, v3

    :goto_4
    if-eqz v9, :cond_6

    if-eqz v8, :cond_d

    :cond_6
    const/4 v3, 0x0

    move v5, v3

    :goto_5
    iget-object v3, v2, Lorg/telegram/messenger/CContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_c

    iget-object v3, v2, Lorg/telegram/messenger/CContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_a

    iget-object v4, v9, Lorg/telegram/messenger/CContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v15, -0x1

    if-eq v4, v15, :cond_a

    iget-object v15, v9, Lorg/telegram/messenger/CContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v15, v2, Lorg/telegram/messenger/CContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v15, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v15, 0x1

    if-ne v4, v15, :cond_a

    :cond_7
    :goto_6
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto/16 :goto_2

    :cond_9
    const/4 v3, 0x0

    move v8, v3

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/CContactsController$6;->val$request:Z

    if-eqz v4, :cond_7

    if-nez v8, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/CContactsController$6;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/CContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_b
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    iget v3, v2, Lorg/telegram/messenger/CContactsController$Contact;->id:I

    int-to-long v0, v3

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    iget-wide v0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-wide/from16 v16, v0

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const/16 v3, 0x20

    shl-long v18, v18, v3

    or-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    iget-object v3, v2, Lorg/telegram/messenger/CContactsController$Contact;->first_name:Ljava/lang/String;

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    iget-object v3, v2, Lorg/telegram/messenger/CContactsController$Contact;->last_name:Ljava/lang/String;

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    iget-object v3, v2, Lorg/telegram/messenger/CContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/CContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_d
    const/4 v3, 0x0

    move v4, v3

    :goto_7
    iget-object v3, v2, Lorg/telegram/messenger/CContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_14

    iget-object v3, v2, Lorg/telegram/messenger/CContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v9, Lorg/telegram/messenger/CContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_13

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/CContactsController$6;->val$request:Z

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/CContactsController$6;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v5, v5, Lorg/telegram/messenger/CContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v3, :cond_12

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    if-eqz v8, :cond_12

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :goto_8
    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v5, :cond_11

    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :goto_9
    if-eqz v8, :cond_12

    iget-object v8, v2, Lorg/telegram/messenger/CContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v2, Lorg/telegram/messenger/CContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_e
    iget-object v3, v2, Lorg/telegram/messenger/CContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v2, Lorg/telegram/messenger/CContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_f
    :goto_a
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_7

    :cond_10
    const-string/jumbo v3, ""

    goto :goto_8

    :cond_11
    const-string/jumbo v5, ""

    goto :goto_9

    :cond_12
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    iget v3, v2, Lorg/telegram/messenger/CContactsController$Contact;->id:I

    int-to-long v0, v3

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    iget-wide v0, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-wide/from16 v16, v0

    int-to-long v0, v4

    move-wide/from16 v18, v0

    const/16 v3, 0x20

    shl-long v18, v18, v3

    or-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    iget-object v3, v2, Lorg/telegram/messenger/CContactsController$Contact;->first_name:Ljava/lang/String;

    iput-object v3, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    iget-object v3, v2, Lorg/telegram/messenger/CContactsController$Contact;->last_name:Ljava/lang/String;

    iput-object v3, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    iget-object v3, v2, Lorg/telegram/messenger/CContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    iget-object v3, v2, Lorg/telegram/messenger/CContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    iget-object v8, v9, Lorg/telegram/messenger/CContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v9, Lorg/telegram/messenger/CContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, v9, Lorg/telegram/messenger/CContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, v9, Lorg/telegram/messenger/CContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, v9, Lorg/telegram/messenger/CContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a

    :cond_14
    iget-object v2, v9, Lorg/telegram/messenger/CContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/CContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/CContactsController$6;->val$first:Z

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/CContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v12, v2, :cond_17

    :cond_16
    :goto_b
    return-void

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/CContactsController$6;->val$request:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/CContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook2(Ljava/util/HashMap;)V

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/CContactsController$6;->val$request:Z

    if-eqz v2, :cond_21

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/CContactsController$6;->this$0:Lorg/telegram/messenger/CContactsController;

    const/4 v3, 0x0

    # setter for: Lorg/telegram/messenger/CContactsController;->completedRequestsCount:I
    invoke-static {v2, v3}, Lorg/telegram/messenger/CContactsController;->access$002(Lorg/telegram/messenger/CContactsController;I)I

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x43fa0000    # 500.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v5, v2

    const/4 v2, 0x0

    move v8, v2

    :goto_c
    if-ge v8, v5, :cond_16

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    mul-int/lit16 v3, v8, 0x1f4

    add-int/lit8 v9, v8, 0x1

    mul-int/lit16 v9, v9, 0x1f4

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v13, v3, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;-><init>()V

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-boolean v2, v9, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->replace:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v2, Lorg/telegram/messenger/CContactsController$6$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/CContactsController$6$2;-><init>(Lorg/telegram/messenger/CContactsController$6;Ljava/util/HashMap;ILjava/util/HashMap;Ljava/util/HashMap;)V

    const/4 v3, 0x6

    invoke-virtual {v10, v9, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_c

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/CContactsController$6;->val$request:Z

    if-eqz v2, :cond_18

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/CContactsController$Contact;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v2, 0x0

    move v4, v2

    :goto_d
    iget-object v2, v3, Lorg/telegram/messenger/CContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/CContactsController$6;->val$force:Z

    if-nez v2, :cond_1f

    iget-object v2, v3, Lorg/telegram/messenger/CContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/CContactsController$6;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v5, v5, Lorg/telegram/messenger/CContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v2, :cond_1f

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    if-eqz v10, :cond_1f

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :goto_e
    iget-object v5, v10, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v5, :cond_1e

    iget-object v5, v10, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :goto_f
    if-eqz v10, :cond_1f

    iget-object v10, v3, Lorg/telegram/messenger/CContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v3, Lorg/telegram/messenger/CContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1b
    iget-object v2, v3, Lorg/telegram/messenger/CContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v3, Lorg/telegram/messenger/CContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1c
    :goto_10
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_d

    :cond_1d
    const-string/jumbo v2, ""

    goto :goto_e

    :cond_1e
    const-string/jumbo v5, ""

    goto :goto_f

    :cond_1f
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    int-to-long v10, v9

    iput-wide v10, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    int-to-long v14, v4

    const/16 v2, 0x20

    shl-long/2addr v14, v2

    or-long/2addr v10, v14

    iput-wide v10, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    iget-object v2, v3, Lorg/telegram/messenger/CContactsController$Contact;->first_name:Ljava/lang/String;

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    iget-object v2, v3, Lorg/telegram/messenger/CContactsController$Contact;->last_name:Ljava/lang/String;

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    iget-object v2, v3, Lorg/telegram/messenger/CContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_20
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/CContactsController$6$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6, v7}, Lorg/telegram/messenger/CContactsController$6$3;-><init>(Lorg/telegram/messenger/CContactsController$6;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    :cond_21
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/CContactsController$6$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6, v7}, Lorg/telegram/messenger/CContactsController$6$4;-><init>(Lorg/telegram/messenger/CContactsController$6;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook2(Ljava/util/HashMap;)V

    goto/16 :goto_b

    :cond_22
    move-object v9, v4

    move-object v10, v3

    goto/16 :goto_3
.end method
