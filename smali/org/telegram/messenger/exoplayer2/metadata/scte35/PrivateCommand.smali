.class public final Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;
.super Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;
.source "PrivateCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final commandBytes:[B

.field public final identifier:J

.field public final ptsAdjustment:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(J[BJ)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;->ptsAdjustment:J

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;->identifier:J

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;->commandBytes:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;->ptsAdjustment:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;->identifier:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;->commandBytes:[B

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;->commandBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IJ)Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    add-int/lit8 v0, p1, -0x4

    new-array v3, v0, [B

    const/4 v0, 0x0

    array-length v4, v3

    invoke-virtual {p0, v3, v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;-><init>(J[BJ)V

    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;->ptsAdjustment:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;->identifier:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;->commandBytes:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;->commandBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
