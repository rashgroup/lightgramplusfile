.class Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;

.field final synthetic val$copy:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;->this$2:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;

    iput-object p2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;->val$copy:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;->this$2:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->val$query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;->this$2:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # invokes: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$4700(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    :cond_1
    const/4 v0, 0x0

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_4

    move v0, v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    aput-object v4, v7, v2

    if-eqz v3, :cond_2

    aput-object v3, v7, v1

    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;->val$copy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;->val$copy:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    move v4, v2

    :goto_4
    array-length v1, v7

    if-ge v4, v1, :cond_6

    aget-object v9, v7, v4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;->this$2:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;

    iget-object v1, v1, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$4600(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_3

    iget v1, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v1, :cond_8

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v5, v1

    :goto_6
    move v6, v2

    :goto_7
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_d

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v10, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v10, :cond_9

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    :goto_8
    if-nez v5, :cond_b

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    if-eqz v6, :cond_b

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_9
    if-eqz v1, :cond_3

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v5, v1

    goto :goto_6

    :cond_9
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;->this$2:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # invokes: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V
    invoke-static {v0, v8}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$4700(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_b
    move v1, v5

    goto :goto_9

    :cond_c
    move v5, v2

    goto :goto_8

    :cond_d
    move v1, v2

    goto :goto_9

    :cond_e
    move-object v3, v0

    goto/16 :goto_1
.end method
