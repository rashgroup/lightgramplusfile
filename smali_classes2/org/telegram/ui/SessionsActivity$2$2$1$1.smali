.class Lorg/telegram/ui/SessionsActivity$2$2$1$1;
.super Ljava/lang/Object;
.source "SessionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionsActivity$2$2$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/SessionsActivity$2$2$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SessionsActivity$2$2$1;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$2$1;

    iput-object p2, p0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$2$1;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2$2$1;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$2$1;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2$2$1;->this$2:Lorg/telegram/ui/SessionsActivity$2$2;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2$2;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$2$1;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2$2$1;->val$authorization:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$2$1;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2$2$1;->this$2:Lorg/telegram/ui/SessionsActivity$2$2;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2$2;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    # invokes: Lorg/telegram/ui/SessionsActivity;->updateRows()V
    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$400(Lorg/telegram/ui/SessionsActivity;)V

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$2$1;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2$2$1;->this$2:Lorg/telegram/ui/SessionsActivity$2$2;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2$2;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$500(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$2$1;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2$2$1;->this$2:Lorg/telegram/ui/SessionsActivity$2$2;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2$2;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$500(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/SessionsActivity$ListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
