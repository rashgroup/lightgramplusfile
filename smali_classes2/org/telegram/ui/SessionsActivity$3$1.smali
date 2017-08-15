.class Lorg/telegram/ui/SessionsActivity$3$1;
.super Ljava/lang/Object;
.source "SessionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionsActivity$3;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SessionsActivity$3;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SessionsActivity$3;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$3$1;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/SessionsActivity$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/SessionsActivity$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$3$1;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$3;->this$0:Lorg/telegram/ui/SessionsActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/SessionsActivity;->loading:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/SessionsActivity;->access$602(Lorg/telegram/ui/SessionsActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$3$1;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$3;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;->authorizations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity$3$1;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/SessionsActivity$3;->this$0:Lorg/telegram/ui/SessionsActivity;

    # setter for: Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;
    invoke-static {v2, v0}, Lorg/telegram/ui/SessionsActivity;->access$702(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_authorization;)Lorg/telegram/tgnet/TLRPC$TL_authorization;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity$3$1;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/SessionsActivity$3;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/SessionsActivity;->access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$3$1;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$3;->this$0:Lorg/telegram/ui/SessionsActivity;

    # invokes: Lorg/telegram/ui/SessionsActivity;->updateRows()V
    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$400(Lorg/telegram/ui/SessionsActivity;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$3$1;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$3;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$500(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$3$1;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$3;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$500(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/SessionsActivity$ListAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method
