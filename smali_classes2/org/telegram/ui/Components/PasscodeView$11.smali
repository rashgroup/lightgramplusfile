.class Lorg/telegram/ui/Components/PasscodeView$11;
.super Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->selfCancelled:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1000(Lorg/telegram/ui/Components/PasscodeView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # invokes: Lorg/telegram/ui/Components/PasscodeView;->showFingerprintError(Ljava/lang/CharSequence;)V
    invoke-static {v0, p2}, Lorg/telegram/ui/Components/PasscodeView;->access$1100(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const-string/jumbo v1, "FingerprintNotRecognized"

    const v2, 0x7f080210

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/telegram/ui/Components/PasscodeView;->showFingerprintError(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->access$1100(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # invokes: Lorg/telegram/ui/Components/PasscodeView;->showFingerprintError(Ljava/lang/CharSequence;)V
    invoke-static {v0, p2}, Lorg/telegram/ui/Components/PasscodeView;->access$1100(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1200(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1200(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->access$1202(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v1, 0x1

    # invokes: Lorg/telegram/ui/Components/PasscodeView;->processDone(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->access$400(Lorg/telegram/ui/Components/PasscodeView;Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
