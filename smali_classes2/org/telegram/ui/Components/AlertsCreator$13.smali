.class final Lorg/telegram/ui/Components/AlertsCreator$13;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createTTLAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field final synthetic val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/ui/Components/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$13;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/16 v2, 0x10

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$13;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    if-ltz v1, :cond_2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-eq v0, v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/SecretChatHelper;->sendTTLMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatTTL(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    :cond_1
    return-void

    :cond_2
    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/16 v2, 0x1e

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    goto :goto_0

    :cond_3
    const/16 v2, 0x11

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/16 v2, 0x3c

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    goto :goto_0

    :cond_4
    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/16 v2, 0xe10

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    goto :goto_0

    :cond_5
    const/16 v2, 0x13

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const v2, 0x15180

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    goto :goto_0

    :cond_6
    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const v2, 0x93a80

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    goto :goto_0
.end method
