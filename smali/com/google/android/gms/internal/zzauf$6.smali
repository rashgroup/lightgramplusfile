.class Lcom/google/android/gms/internal/zzauf$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzauf;->zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/zzatd;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/internal/zzaus;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic zzbuP:Lcom/google/android/gms/internal/zzatd;

.field final synthetic zzbuQ:Lcom/google/android/gms/internal/zzauf;

.field final synthetic zzbuS:Ljava/lang/String;

.field final synthetic zzbuT:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzauf;Lcom/google/android/gms/internal/zzatd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauf$6;->zzbuQ:Lcom/google/android/gms/internal/zzauf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzauf$6;->zzbuP:Lcom/google/android/gms/internal/zzatd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzauf$6;->zzbuS:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzauf$6;->zzbuT:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauf$6;->zzMM()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzMM()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauf$6;->zzbuQ:Lcom/google/android/gms/internal/zzauf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzauf;->zza(Lcom/google/android/gms/internal/zzauf;)Lcom/google/android/gms/internal/zzaue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzMK()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauf$6;->zzbuQ:Lcom/google/android/gms/internal/zzauf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzauf;->zza(Lcom/google/android/gms/internal/zzauf;)Lcom/google/android/gms/internal/zzaue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKf()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauf$6;->zzbuP:Lcom/google/android/gms/internal/zzatd;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauf$6;->zzbuS:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauf$6;->zzbuT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzatj;->zzk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
