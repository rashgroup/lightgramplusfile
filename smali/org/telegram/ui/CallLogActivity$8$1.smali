.class Lorg/telegram/ui/CallLogActivity$8$1;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CallLogActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CallLogActivity$8;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CallLogActivity$8;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/CallLogActivity$8;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/CallLogActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_userFull;)V

    return-void
.end method
